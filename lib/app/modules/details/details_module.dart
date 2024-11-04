import 'package:flutter_modular/flutter_modular.dart';
import 'package:movies/app/modules/details/details_page.dart';

import 'controllers/controllers.dart';
import 'repositories/repositories.dart';

class DetailsModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(DetailsController.new);
    i.add(DetailsRepository.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => DetailsPage(id: Modular.args.data),
    );
  }
}
