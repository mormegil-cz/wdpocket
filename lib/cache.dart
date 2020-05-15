typedef T CacheDeserializer<T>(String serialized);

abstract class CacheStorable {
  String serializeToCache();
}

abstract class Cache<T extends CacheStorable> {
  Cache(this.itemFactory);

  final CacheDeserializer<T> itemFactory;

  Future<T> find(String key);

  Future<void> store(String key, T value);
}

class DictionaryCache<T extends CacheStorable> extends Cache<T> {
  DictionaryCache(CacheDeserializer<T> itemFactory) : super(itemFactory);

  final Map<String, String> _store = {};

  @override
  Future<T> find(String key) async {
    var stored = _store[key];
    if (stored == null) return null;

    return itemFactory(stored);
  }

  @override
  Future<void> store(String key, T value) async {
    _store[key] = value.serializeToCache();
  }
}
