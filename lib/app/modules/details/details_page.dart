import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../core/life_cycle/life_cycle.dart';
import 'controllers/controllers.dart';
import 'details.dart';

class DetailsPage extends StatefulWidget {
  final int id;
  const DetailsPage({super.key, required this.id});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState
    extends PageLifeCycleState<DetailsController, DetailsPage> {
  @override
  void initState() {
    super.initState();
    final id = widget.id;
    controller.getMovieById(id);
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Observer(builder: (context) {
        if (controller.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BannerComponent(
                image: controller.movie!.image ?? '',
                title: controller.movie!.name ?? '',
              ),
              const SizedBox(height: 14.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InformationComponent(
                        title: 'Tipo',
                        info: controller.movie?.category ?? '',
                        icon: Icons.play_circle,
                      ),
                      StarsComponent(stars: controller.movie?.stars ?? 0),
                      InformationComponent(
                        title: 'Duração',
                        info: controller.movie?.duration ?? '',
                        icon: Icons.timer,
                      ),
                    ]),
              ),
              const SizedBox(height: 14.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sinopse ',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      controller.movie?.details ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Ultimo trailler ',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: controller.youtubeController != null
                    ? YoutubePlayer(
                        controller: controller.youtubeController!,
                        showVideoProgressIndicator: true,
                      )
                    : const Text(
                        'Trailer não disponível',
                        style: TextStyle(color: Colors.white),
                      ),
              ),
              const SizedBox(height: 10.0),
              const Divider(thickness: 1.0, color: Colors.grey),
              const SizedBox(height: 14.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Elenco',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  controller.movie?.cast ?? '',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Filmes relacionados:',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              OthersList(controller: controller),
              SizedBox(height: 20.h),
            ],
          ),
        );
      }),
    );
  }
}
