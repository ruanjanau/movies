import 'package:flutter_modular/flutter_modular.dart';

import 'modules/login/lodgin.dart';
import 'modules/splash/splash.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(RouteManager r) {
    r.module(
      '/splash/',
      module: SplashModule(),
    );
    r.module(
      '/login/',
      module: LoginModule(),
    );
  }
}
