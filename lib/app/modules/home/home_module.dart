import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/controllers.dart';
import 'home_page.dart';
import 'repositories/repositories.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.add(HomeRepository.new);
    i.addLazySingleton(HomeController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const HomePage());
  }
}
