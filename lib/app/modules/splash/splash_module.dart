import 'package:flutter_modular/flutter_modular.dart';
import 'package:movies/app/modules/splash/splash_page.dart';

class SplashModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const SplashPage());
  }
}
