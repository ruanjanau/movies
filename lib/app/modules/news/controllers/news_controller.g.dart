// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewsController on NewsControllerBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'NewsControllerBase.isLoading', context: context);

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

  late final _$newsModelAtom =
      Atom(name: 'NewsControllerBase.newsModel', context: context);

  @override
  NewsModel? get newsModel {
    _$newsModelAtom.reportRead();
    return super.newsModel;
  }

  @override
  set newsModel(NewsModel? value) {
    _$newsModelAtom.reportWrite(value, super.newsModel, () {
      super.newsModel = value;
    });
  }

  late final _$getNewsAsyncAction =
      AsyncAction('NewsControllerBase.getNews', context: context);

  @override
  Future<void> getNews() {
    return _$getNewsAsyncAction.run(() => super.getNews());
  }

  late final _$NewsControllerBaseActionController =
      ActionController(name: 'NewsControllerBase', context: context);

  @override
  dynamic setIsLoading(bool value) {
    final _$actionInfo = _$NewsControllerBaseActionController.startAction(
        name: 'NewsControllerBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$NewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
newsModel: ${newsModel}
    ''';
  }
}
