import 'package:dio/dio.dart';
import 'package:movies/app/core/life_cycle/life_cycle.dart';

import '../../../core/adapters/adapters.dart';
import '../../../core/models/models.dart';

class NewsRepository extends RepositoryLifeCycle {
  Future<List<NewsModel>> getNews() async {
    Response? response = await httpAdapter.request(
      httpMethod: HttpMethod.get,
      url: 'https://6573803a063f876cec9cf9f6.mockapi.io/news',
      needsAuthorization: true,
    );

    return List<NewsModel>.from(
      (response?.data as List).map(
        (e) => NewsModel.fromJson(e),
      ),
    );
  }
}
