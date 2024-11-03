// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DetailsController on DetailsControllerBase, Store {
  late final _$moviesListAtom =
      Atom(name: 'DetailsControllerBase.moviesList', context: context);

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
      Atom(name: 'DetailsControllerBase.movie', context: context);

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

  late final _$isLoadingAtom =
      Atom(name: 'DetailsControllerBase.isLoading', context: context);

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

  late final _$DetailsControllerBaseActionController =
      ActionController(name: 'DetailsControllerBase', context: context);

  @override
  void setIsLoading(bool value) {
    final _$actionInfo = _$DetailsControllerBaseActionController.startAction(
        name: 'DetailsControllerBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$DetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
moviesList: ${moviesList},
movie: ${movie},
isLoading: ${isLoading}
    ''';
  }
}
