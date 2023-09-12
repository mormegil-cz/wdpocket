abstract class CachingAdapter<T> {
  T deserializeFromCache(String serialized);
  String serializeToCache(T data);
}

abstract class Cache {
  Future<T?> find<T>(CachingAdapter<T> adapter, String key);
  Future<void> store<T>(CachingAdapter<T> adapter, String key, T value);
}

class DictionaryCache extends Cache {
  final Map<String, String> _store = {};

  @override
  Future<T?> find<T>(CachingAdapter<T> adapter, String key) async {
    var stored = _store[key];
    if (stored == null) return null;

    return adapter.deserializeFromCache(stored);
  }

  @override
  Future<void> store<T>(CachingAdapter<T> adapter, String key, T value) async {
    _store[key] = adapter.serializeToCache(value);
  }
}
