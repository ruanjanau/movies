import 'package:dio/dio.dart';

import '../../../core/adapters/adapters.dart';
import '../../../core/life_cycle/life_cycle.dart';
import '../../../core/models/models.dart';

class DetailsRepository extends RepositoryLifeCycle {
  Future<List<MoviesModel>> getMovies() async {
    Response? response = await httpAdapter.request(
      httpMethod: HttpMethod.get,
      url: 'https://6573803a063f876cec9cf9f6.mockapi.io/movies',
      needsAuthorization: true,
    );

    return List<MoviesModel>.from(
      (response?.data as List).map(
        (e) => MoviesModel.fromJson(e),
      ),
    );
  }
}
