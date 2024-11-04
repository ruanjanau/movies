import 'package:flutter_modular/flutter_modular.dart';
import 'package:movies/app/modules/details/details.dart';
import 'package:movies/app/modules/news/news.dart';

import 'core/adapters/adapters.dart';
import 'core/local_storage/flutter_storage/flutter_secure_storage.dart';
import 'core/local_storage/local_storage.dart';
import 'core/local_storage/shared_preferences/shared_preferences.dart';
import 'modules/home/home.dart';
import 'modules/login/login_module.dart';
import 'modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.add<HttpAdapter>(HttpAdapterImpl.new);
    i.addLazySingleton<LocalSecureStorage>(FlutterSecureStorageImpl.new);
    i.addLazySingleton<LocalStorage>(SharedPreferencesLocalStorageImpl.new);
  }

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
    r.module(
      '/home/',
      module: HomeModule(),
    );
    r.module(
      '/details/',
      module: DetailsModule(),
    );
    r.module(
      '/news/',
      module: NewsModule(),
    );
  }
}
