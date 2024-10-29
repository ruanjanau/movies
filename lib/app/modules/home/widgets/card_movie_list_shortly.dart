import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movies/app/modules/home/widgets/skeleton_movies.dart';

import '../controllers/controllers.dart';
import 'card_movie_shortly.dart';

class CardMovieListShortly extends StatelessWidget {
  final HomeController controller;
  const CardMovieListShortly({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: Observer(builder: (context) {
        if (controller.isLoading) {
          return const SkeletonMovies();
        }
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.moviesList
              .where(
                (element) => element.shortly == true,
              )
              .length,
          itemBuilder: (context, index) {
            var movie = controller.moviesList
                .where(
                  (element) => element.shortly == true,
                )
                .toList();
            return CardMovieShortly(
              movie: movie[index],
            );
          },
        );
      }),
    );
  }
}
