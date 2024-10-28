import 'package:mobx/mobx.dart';
import 'package:movies/app/core/life_cycle/controller_life_cycle.dart';
import 'package:movies/app/modules/home/repositories/home_repository.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store, ControllerLifeCycle {
  final HomeRepository _homeRepository;

  HomeControllerBase({
    required HomeRepository homeRepository,
  }) : _homeRepository = homeRepository;

  @override
  void onInit([Map<String, dynamic>? params]) {
    super.onInit();
  }

  @observable
  bool isLoading = true;

  @action
  void setIsLoading(bool value) => isLoading = value;

  Future<void> getMovies() async {
    setIsLoading(true);
    await _homeRepository.getMovies().then((response) {
      response = response;
    }).whenComplete(
      () => setIsLoading(false),
    );
  }
}
