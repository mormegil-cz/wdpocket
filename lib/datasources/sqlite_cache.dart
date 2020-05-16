import 'package:meta/meta.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'cache.dart';

class SqliteCache extends Cache {
  SqliteCache({@required this.cacheValidityTimeout, @required this.maxEntries});

  static const int _entryCleanupDelta = 20;

  final int cacheValidityTimeout;
  final int maxEntries;
  Database _database;
  int _addedEntries = -1;

  Future<void> ensureDatabase() async {
    if (_database == null) {
      _database = await openDatabase(join((await getTemporaryDirectory()).path, "cache.db"),
          onCreate: (db, version) => db.execute("CREATE TABLE cacheitems(key VARCHAR(32) PRIMARY KEY, value TEXT, created INT, lastaccess INT);"), version: 1);
    }
  }

  Future<Map<String, dynamic>> _getSingle(String sql, [List<dynamic> arguments]) async {
    final List<Map<String, dynamic>> resultList = await _database.rawQuery(sql, arguments);
    if (resultList.length != 1) throw Exception("Unexpected number of rows");

    return resultList[0];
  }

  Future<Map<String, dynamic>> _getSingleOrNull(String sql, [List<dynamic> arguments]) async {
    final List<Map<String, dynamic>> resultList = await _database.rawQuery(sql, arguments);
    switch (resultList.length) {
      case 0:
        return null;
      case 1:
        return resultList[0];
      default:
        throw Exception("Result contained too many rows");
    }
  }

  Future<void> cleanupCache() async {
    if (_addedEntries > 0 && _addedEntries <= _entryCleanupDelta) return;

    await ensureDatabase();

    final int now = getTimestamp();
    await _database.execute("DELETE FROM cacheitems WHERE lastaccess<?", [now - cacheValidityTimeout]);

    final result = await _getSingle("SELECT COUNT(*) cnt FROM cacheitems");
    int count = result["cnt"];

    if (count > maxEntries) {
      await _database.execute("DELETE FROM cacheitems WHERE key NOT IN (SELECT key FROM cacheitems ORDER BY lastaccess DESC LIMIT ?)", [maxEntries]);
    }

    _addedEntries = 0;
  }

  @override
  Future<T> find<T>(CachingAdapter<T> adapter, String key) async {
    await ensureDatabase();

    var resultRow = await _getSingleOrNull("SELECT value, created FROM cacheitems WHERE key=?", [key]);
    if (resultRow == null) return null;

    final String serialized = resultRow["value"];
    final int created = resultRow["created"];
    final int now = getTimestamp();

    if (created < now - cacheValidityTimeout) {
      _database.rawDelete("DELETE FROM cacheitems WHERE key=?", [key]);
      return null;
    }

    _database.rawUpdate("UPDATE cacheitems SET lastaccess=? WHERE key=?", [key, now]);

    return adapter.deserializeFromCache(serialized);
  }

  @override
  Future<void> store<T>(CachingAdapter<T> adapter, String key, T value) async {
    await ensureDatabase();
    await cleanupCache();

    final serialized = adapter.serializeToCache(value);
    final int now = getTimestamp();
    _database.rawInsert("INSERT OR REPLACE INTO cacheitems(key, value, created, lastaccess) VALUES(?, ?, ?, ?)", [key, serialized, now, now]);

    ++_addedEntries;
  }

  int getTimestamp() => DateTime.now().millisecondsSinceEpoch ~/ 1000;
}
