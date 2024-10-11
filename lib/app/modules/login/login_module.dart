import 'package:flutter_modular/flutter_modular.dart';

import 'lodgin.dart';

class LoginModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const LoginPage());
  }
}
