import 'package:mobx/mobx.dart';

import '../../../core/life_cycle/controller_life_cycle.dart';
import '../../../core/models/models.dart';
import '../repositories/repositories.dart';

part 'news_controller.g.dart';

class NewsController = NewsControllerBase with _$NewsController;

abstract class NewsControllerBase with Store, ControllerLifeCycle {
  final NewsRepository _repository;

  NewsControllerBase({
    required NewsRepository repository,
  }) : _repository = repository;

  @override
  void onInit([Map<String, dynamic>? params]) {
    getNews();
    super.onInit();
  }

  ObservableList<NewsModel> newsList = <NewsModel>[].asObservable();

  @observable
  bool isLoading = false;

  @observable
  NewsModel? newsModel;

  @action
  setIsLoading(bool value) => isLoading = value;

  @action
  Future<void> getNews() async {
    setIsLoading(true);
    await _repository.getNews().then((response) {
      newsList.clear();
      newsList.addAll(response);
    }).whenComplete(
      () => setIsLoading(false),
    );
  }
}
