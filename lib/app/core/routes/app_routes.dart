import 'package:flutter_modular/flutter_modular.dart';

class AppRoutes {
  static void goToSplash() {
    Modular.to.pushNamed('/splash/');
  }

  static void goToLogin() {
    Modular.to.pushNamed('/login/');
  }

  static void goToHome() {
    Modular.to.pushNamed('/home/');
  }

  static void goToDetails(int? id) {
    Modular.to.pushNamed(
      '/details/',
      arguments: id,
    );
  }
}
