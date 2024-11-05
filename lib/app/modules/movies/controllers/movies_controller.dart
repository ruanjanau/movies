import 'package:mobx/mobx.dart';

import '../../../core/life_cycle/controller_life_cycle.dart';
import '../../../core/models/models.dart';
import '../repositories/repositories.dart';

part 'movies_controller.g.dart';

class MoviesController = MoviesControllerBase with _$MoviesController;

abstract class MoviesControllerBase with Store, ControllerLifeCycle {
  final MoviesRepository _moviesRepository;
  MoviesControllerBase({required MoviesRepository moviesRepository})
      : _moviesRepository = moviesRepository;

  @override
  void onInit([Map<String, dynamic>? params]) {
    getMovies();
    super.onInit();
  }

  @observable
  bool isLoading = false;

  @observable
  List<MoviesModel> moviesList = <MoviesModel>[].asObservable();

  @observable
  MoviesModel? movie;

  @action
  setIsLoading(bool value) => isLoading = value;

  @action
  Future<void> getMovies() async {
    setIsLoading(true);
    await _moviesRepository.getMovies().then((response) {
      moviesList.clear();
      moviesList.addAll(response);
    }).whenComplete(
      () => setIsLoading(false),
    );
  }
}
