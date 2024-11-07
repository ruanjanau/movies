import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../movies.dart';

class MoviesList extends StatelessWidget {
  final MoviesController controller;
  final String genre;

  const MoviesList({
    super.key,
    required this.controller,
    required this.genre,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Observer(builder: (context) {
        final filteredMovies = controller.moviesList
            .where((movie) => movie.category == genre)
            .toList();
        if (controller.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
          ),
          itemCount: filteredMovies.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final movie = filteredMovies[index];
            return CardMoviesComponent(
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
