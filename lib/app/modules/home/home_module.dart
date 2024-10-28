import 'package:flutter_modular/flutter_modular.dart';
import 'package:movies/app/modules/home/controllers/home_controller.dart';

import 'home_page.dart';
import 'repositories/repositories.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.add(HomeController.new);
    i.addLazySingleton(HomeRepository.new);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const HomePage());
  }
}
