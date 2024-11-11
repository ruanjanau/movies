import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movies/app/core/models/models.dart';
import 'package:movies/app/modules/movies/repositories/movies_repository.dart';

class MoviesRepositoryMock extends Mock implements MoviesRepository {}

void main() {
  late MoviesRepositoryMock moviesRepository;

  setUp(() {
    moviesRepository = MoviesRepositoryMock();
  });

  group(
    'MoviesRepository / ',
    () {
      test(
        'Deve retornar uma lista de movies',
        () async {
          final movies = [
            MoviesModel(
              id: 1,
              name: 'Movie 1',
              details: '',
              image:
                  'https://image.tmdb.org/t/p/original/q3k9i0e0s0t9m0j7l0v1.jpg',
              stars: 8.0,
              duration: '',
              cast: '',
              category: '',
              onDisplay: false,
              shortly: false,
              video: '',
              others: [
                OthersModel(
                  name: '',
                  image: '',
                ),
                OthersModel(
                  name: '',
                  image: '',
                ),
              ],
            ),
          ];

          when(() => moviesRepository.getMovies())
              .thenAnswer((_) async => movies);

          final result = await moviesRepository.getMovies();
          expect(result, isNotNull);
          expect(result, equals(movies));
        },
      );
      test(
        'Deve retornar um movies error',
        () async {
          when(() => moviesRepository.getMovies()).thenThrow(Exception());

          expect(
            () async => await moviesRepository.getMovies(),
            throwsA(isA<Exception>()),
          );
        },
      );
    },
  );
}
