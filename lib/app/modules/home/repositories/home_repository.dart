import 'package:movies/app/core/dio/dio.dart';
import 'package:movies/app/core/models/movies_model.dart';

class HomeRepository {
  final DioMockApi apiClient = DioMockApi();
  Future<List<MovieData>> getMovies() async {
    final response = await apiClient.dio.get('${apiClient.baseUrl}movies');
    try {
      return (response.data as List)
          .map((movie) => MovieData.fromJson(movie))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
