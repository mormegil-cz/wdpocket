import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import '../../datasources/api.dart';
import '../../models/search_result.dart';

class SearchBloc extends Bloc<String, SearchState> {
  SearchBloc(this._entitySource) : super(SearchStateEmpty());

  final EntitySource _entitySource;

  @override
  Stream<Transition<String, SearchState>> transformEvents(
    Stream<String> events,
    Stream<Transition<String, SearchState>> transitionFn(String event),
  ) =>
      events.debounceTime(const Duration(milliseconds: 300)).switchMap(transitionFn);

  @override
  Stream<SearchState> mapEventToState(String searchQuery) async* {
    if (searchQuery == null || searchQuery.isEmpty) {
      yield SearchStateEmpty();
      return;
    }

    yield SearchStateLoading();

    try {
      var results = await _entitySource.search(searchQuery, 10);
      yield SearchStateSuccess(results);
    } catch (e) {
      yield SearchStateError(e);
    }
  }
}

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];

  bool get isEmpty => false;

  bool get isSuccess => false;

  bool get isError => false;

  bool get isLoading => false;
}

class SearchStateEmpty extends SearchState {
  @override
  bool get isEmpty => true;
}

class SearchStateLoading extends SearchState {
  @override
  bool get isLoading => true;
}

class SearchStateSuccess extends SearchState {
  final List<SearchResult> results;

  const SearchStateSuccess(this.results);

  @override
  bool get isSuccess => true;

  @override
  List<Object> get props => [results];
}

class SearchStateError extends SearchState {
  final Object error;

  const SearchStateError(this.error);

  @override
  bool get isError => true;

  @override
  List<Object> get props => [error];
}
