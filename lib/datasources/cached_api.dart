import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:pocket_data/datasources/cache.dart';
import 'package:pocket_data/datasources/sqlite_cache.dart';
import 'package:pocket_data/models/model.dart';

import '../util.dart';
import 'api.dart';

class CachedWikibaseApi extends EntitySource {
  CachedWikibaseApi({@required List<String> languages})
      : _languages = languages,
        _directApi = WikibaseApi(languages: languages);

  final List<String> _languages;
  final WikibaseApi _directApi;
  final CachingAdapter<Entity> _entityCachingAdapter = _EntityCachingAdapter();
  final CachingAdapter<String> _stringCachingAdapter = _StringCachingAdapter();
  final Cache _cache = SqliteCache(cacheValidityTimeout: 7 * 24 * 60 * 60, maxEntries: 5000);

  @override
  Future<Entity> getEntity(String qid, bool forceReload) async {
    final cacheKey = _getFullCacheKey(qid);

    if (!forceReload) {
      final cached = await _cache.find(_entityCachingAdapter, cacheKey);
      if (cached != null) return cached;
    }

    var entity = await _directApi.getEntity(qid, forceReload);
    _cache.store(_entityCachingAdapter, cacheKey, entity);

    return entity;
  }

  @override
  Future<Map<String, String>> getEntityLabels(Iterable<String> ids) async {
    final Map<String, String> result = {};
    final Set<String> idsToLoad = {};
    // first, try to load everything from cache
    for (final String id in ids) {
      final cachedTitle = await _cache.find(_stringCachingAdapter, _getTitleCacheKey(id));
      if (cachedTitle == null) {
        // not in title cache, try to find the full entity
        final Entity cachedEntity = await _cache.find(_entityCachingAdapter, _getFullCacheKey(id));
        if (cachedEntity == null) {
          // not in the full cache either, we’ll need to load it
          idsToLoad.add(id);
        } else {
          // full entity cached, retrieve a label
          result[id] = getLocalizedLabel(cachedEntity.labels, _languages);
        }
      } else {
        // title cached
        result[id] = cachedTitle;
      }
    }

    // now, was anything missing?
    if (idsToLoad.isNotEmpty) {
      final retrievedLabels = await _directApi.getEntityLabels(idsToLoad);
      for (final entry in retrievedLabels.entries) {
        var qid = entry.key;
        result[qid] = entry.value;
        // and store to cache as well
        _cache.store(_stringCachingAdapter, _getTitleCacheKey(qid), entry.value);
      }
    }

    return result;
  }

  String _getFullCacheKey(String qid) => "full:$qid";

  String _getTitleCacheKey(String qid) => "title:$qid";
}

class _EntityCachingAdapter implements CachingAdapter<Entity> {
  @override
  Entity deserializeFromCache(String serialized) {
    return Entity.fromParsedJson(jsonDecode(serialized));
  }

  @override
  String serializeToCache(Entity item) {
    return jsonEncode(item.toJsonStructure());
  }
}

class _StringCachingAdapter implements CachingAdapter<String> {
  @override
  String deserializeFromCache(String serialized) {
    return serialized;
  }

  @override
  String serializeToCache(String item) {
    return item;
  }
}
