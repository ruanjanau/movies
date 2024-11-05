import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/app/modules/details/details.dart';
import 'package:movies/app/modules/details/widgets/information_component.dart';
import 'package:movies/app/modules/details/widgets/stars_component.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../core/life_cycle/life_cycle.dart';
import 'controllers/controllers.dart';

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
              Container(
                height: 120.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Stack(
                  children: [
                    Image.network(
                      controller.movie!.image ?? '',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 90.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(1.0),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      left: 16,
                      right: 16,
                      child: Text(
                        controller.movie!.name ?? 'Título do Filme',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.clip,
                          fontFamily: 'RobotoMono',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
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
                      StarsComponent(
                        stars: controller.movie?.stars ?? 0,
                      ),
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
                child: Text(
                  'Sinopse: ${controller.movie?.details ?? ''}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 14.0),
              const Text(
                'Ultimo trailler: ',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 14.0),
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
              const SizedBox(height: 14.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Elenco: ${controller.movie?.cast ?? ''} ',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.clip,
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
