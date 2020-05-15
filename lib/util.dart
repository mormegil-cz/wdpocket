T identity<T>(T x) => x;

Iterable<T> flatten<T>(Iterable<Iterable<T>> collection) => flatMap(collection, identity);

Iterable<U> flatMap<T, U>(Iterable<T> collection, Iterable<U> f(T x)) => collection.expand(f);
