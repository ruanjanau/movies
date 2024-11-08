import 'package:flutter_modular/flutter_modular.dart';

import 'movies.dart';
import 'repositories/repositories.dart';

class MoviesModule extends Module {
  @override
  void binds(i) {
    i.add(MoviesController.new);
    i.addLazySingleton(MoviesRepository.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const MoviesPage(),
    );
  }
}
