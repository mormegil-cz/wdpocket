T identity<T>(T x) => x;

Iterable<T> flatten<T>(Iterable<Iterable<T>> collection) => flatMap(collection, identity);

Iterable<U> flatMap<T, U>(Iterable<T> collection, Iterable<U> f(T x)) => collection.expand(f);

Iterable<List<T>> split<T>(Iterable<T> collection, int maxSize) sync* {
  List<T> currBatch = [];
  for (final item in collection) {
    currBatch.add(item);
    if (currBatch.length >= maxSize) {
      yield currBatch;
      currBatch = [];
    }
  }
  if (currBatch.isNotEmpty) {
    yield currBatch;
  }
}

String getLocalizedLabel(Map<String, String> localizations, Iterable<String> languages) =>
    languages.map((language) => localizations[language]).firstWhere((element) => element != null && element.isNotEmpty, orElse: null);
