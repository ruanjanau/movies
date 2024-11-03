import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movies/app/modules/home/controllers/home_controller.dart';

import '../home.dart';

class CardMovieList extends StatelessWidget {
  final HomeController controller;
  const CardMovieList({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: Observer(builder: (context) {
        if (controller.isLoading) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.0),
            child: SkeletonMovies(),
          );
        }
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            final movie = controller.moviesList[index];
            return CardMovieTile(
              id: movie.id!,
              name: movie.name!,
              image: movie.image!,
            );
          },
        );
      }),
    );
  }
}
