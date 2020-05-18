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
    languages.map((language) => localizations[language]).firstWhere((element) => element != null && element.isNotEmpty, orElse: () => null);

Comparator<T> comparerByPreferredList<T>(List<T> preferredList, Comparator<T> baseComparator) {
  final Map<T, int> indexedPreferences = {};

  for (int i = 0; i < preferredList.length; ++i) {
    indexedPreferences[preferredList[i]] = i;
  }

  int comparator(T a, T b) {
    final aIndex = indexedPreferences[a];
    final bIndex = indexedPreferences[b];
    if (aIndex == null) {
      if (bIndex == null) {
        return baseComparator(a, b);
      } else {
        return 1;
      }
    } else {
      if (bIndex == null) {
        return -1;
      } else {
        return aIndex.compareTo(bIndex);
      }
    }
  }

  return comparator;
}
