import 'package:flutter_modular/flutter_modular.dart';
import 'package:movies/app/modules/news/controllers/news_controller.dart';
import 'package:movies/app/modules/news/repositories/news_repository.dart';

import 'news.dart';

class NewsModule extends Module {
  @override
  void binds(i) {
    i.add(NewsController.new);
    i.addLazySingleton(NewsRepository.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const NewsPage(),
    );
  }
}
