import 'package:mobx/mobx.dart';
import 'package:movies/app/core/models/models.dart';

import '../../../core/life_cycle/life_cycle.dart';
import '../repositories/repositories.dart';

part 'details_controller.g.dart';

class DetailsController = DetailsControllerBase with _$DetailsController;

abstract class DetailsControllerBase with Store, ControllerLifeCycle {
  final DetailsRepository _detailsRepository;

  DetailsControllerBase({
    required DetailsRepository detailsRepository,
  }) : _detailsRepository = detailsRepository;

  @observable
  List<MoviesModel> moviesList = [];

  @observable
  MoviesModel? movie;

  @observable
  bool isLoading = true;

  @action
  void setIsLoading(bool value) => isLoading = value;

  Future<void> getMovieById(int id) async {
    setIsLoading(true);
    await _detailsRepository.getMovies().then((response) {
      moviesList = response;
      movie = moviesList.firstWhere((element) => element.id == id,
          orElse: () => MoviesModel(id: 0, name: '', image: ''));
    }).whenComplete(
      () => setIsLoading(false),
    );
  }
}
