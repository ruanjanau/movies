import 'package:mobx/mobx.dart';
import 'package:movies/app/core/models/models.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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

  @observable
  YoutubePlayerController? youtubeController;

  @action
  void setIsLoading(bool value) => isLoading = value;

  Future<void> getMovieById(int id) async {
    setIsLoading(true);
    await _detailsRepository.getMovies().then((response) {
      moviesList = response;
      movie = moviesList.firstWhere((element) => element.id == id,
          orElse: () => MoviesModel(id: 0, name: '', image: ''));

      if (movie?.video != null) {
        initializeYoutubePlayer(movie!.video!);
      }
    }).whenComplete(
      () => setIsLoading(false),
    );
  }

  @action
  void initializeYoutubePlayer(String youtubeUrl) {
    final videoId = YoutubePlayer.convertUrlToId(youtubeUrl);
    if (videoId != null) {
      youtubeController = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      );
    } else {
      youtubeController = null;
    }
  }

  @override
  void dispose() {
    youtubeController?.dispose();
    super.dispose();
  }
}
