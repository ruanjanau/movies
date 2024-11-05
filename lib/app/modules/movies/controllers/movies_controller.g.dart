// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MoviesController on MoviesControllerBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'MoviesControllerBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$moviesListAtom =
      Atom(name: 'MoviesControllerBase.moviesList', context: context);

  @override
  List<MoviesModel> get moviesList {
    _$moviesListAtom.reportRead();
    return super.moviesList;
  }

  @override
  set moviesList(List<MoviesModel> value) {
    _$moviesListAtom.reportWrite(value, super.moviesList, () {
      super.moviesList = value;
    });
  }

  late final _$movieAtom =
      Atom(name: 'MoviesControllerBase.movie', context: context);

  @override
  MoviesModel? get movie {
    _$movieAtom.reportRead();
    return super.movie;
  }

  @override
  set movie(MoviesModel? value) {
    _$movieAtom.reportWrite(value, super.movie, () {
      super.movie = value;
    });
  }

  late final _$getMoviesAsyncAction =
      AsyncAction('MoviesControllerBase.getMovies', context: context);

  @override
  Future<void> getMovies() {
    return _$getMoviesAsyncAction.run(() => super.getMovies());
  }

  late final _$MoviesControllerBaseActionController =
      ActionController(name: 'MoviesControllerBase', context: context);

  @override
  dynamic setIsLoading(bool value) {
    final _$actionInfo = _$MoviesControllerBaseActionController.startAction(
        name: 'MoviesControllerBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$MoviesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
moviesList: ${moviesList},
movie: ${movie}
    ''';
  }
}
