import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../controllers/home_controller.dart';
import '../home.dart';

class CardMovieList extends StatelessWidget {
  final HomeController controller;
  const CardMovieList({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
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
          itemCount: controller.moviesList
              .where((element) => element.onDisplay == true)
              .length,
          itemBuilder: (context, index) {
            final movie = controller.moviesList
                .where((element) => element.onDisplay == true)
                .toList();
            return CardMovieTile(
              id: movie[index].id!,
              name: movie[index].name!,
              image: movie[index].image!,
            );
          },
        );
      }),
    );
  }
}
