import 'package:mobx/mobx.dart';

import '../../../core/life_cycle/controller_life_cycle.dart';
import '../../../core/models/models.dart';
import '../repositories/repositories.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store, ControllerLifeCycle {
  final HomeRepository _homeRepository;

  HomeControllerBase({
    required HomeRepository homeRepository,
  }) : _homeRepository = homeRepository;

  @override
  void onInit([Map<String, dynamic>? params]) {
    getMovies();
    super.onInit();
  }

  @observable
  List<MoviesModel> moviesList = [];

  @observable
  MoviesModel? movies;

  @observable
  bool isLoading = true;

  @action
  void setIsLoading(bool value) => isLoading = value;

  Future<void> getMovies() async {
    setIsLoading(true);
    await _homeRepository.getMovies().then((response) {
      moviesList.clear();
      moviesList.addAll(response);
    }).whenComplete(
      () => setIsLoading(false),
    );
  }
}
