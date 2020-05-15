import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'cache.dart';

class SqliteCache<T extends CacheStorable> extends Cache<T> {
  SqliteCache(CacheDeserializer<T> itemFactory, this.cacheValidityTimeout) : super(itemFactory);

  final int cacheValidityTimeout;
  Database _database;

  Future ensureDatabase() async {
    if (_database == null) {
      _database = await openDatabase(join((await getTemporaryDirectory()).path, "cache.db"),
          onCreate: (db, version) => db.execute("CREATE TABLE cacheitems(key VARCHAR(32) PRIMARY KEY, value TEXT, created INT, lastaccess INT);"), version: 1);
    }
  }

  @override
  Future<T> find(String key) async {
    await ensureDatabase();

    var resultList = await _database.rawQuery("SELECT value, created FROM cacheitems WHERE key=?", [key]);
    if (resultList.isEmpty) return null;

    var resultRow = resultList[0];
    final String serialized = resultRow["value"];
    final int created = resultRow["created"];
    final int now = getTimestamp();

    if (created < now - cacheValidityTimeout) {
      _database.rawDelete("DELETE FROM cacheitems WHERE key=?", [key]);
      return null;
    }

    _database.rawUpdate("UPDATE lastaccess=? WHERE key=?", [key, now]);

    return itemFactory(serialized);
  }

  @override
  Future<void> store(String key, T value) async {
    await ensureDatabase();

    final serialized = value.serializeToCache();
    final int now = getTimestamp();
    _database.rawInsert(
        "INSERT INTO cacheitems(key, value, created, lastaccess) VALUES(?, ?, ?, ?) ON CONFLICT(key) DO UPDATE SET value=?, created=?, lastaccess=?",
        [key, serialized, now, now, serialized, now, now]);
  }

  int getTimestamp() => DateTime.now().millisecondsSinceEpoch ~/ 1000;
}
