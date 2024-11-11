import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movies/app/core/models/movies_model.dart';
import 'package:movies/app/core/models/others_model.dart';
import 'package:movies/app/modules/home/repositories/home_repository.dart';

class HomeRepositoryMock extends Mock implements HomeRepository {}

void main() {
  late HomeRepositoryMock homeRepository;

  setUp(() {
    homeRepository = HomeRepositoryMock();
  });

  group(
    'HomeRepository / ',
    () {
      test(
        'Deve retornar uma lista de movies',
        () async {
          final movies = [
            MoviesModel(
              id: 1,
              name: 'Movie 1',
              details: 'Movie 1 details',
              image:
                  'https://image.tmdb.org/t/p/original/q3k9i0e0s0t9m0j7l0v1.jpg',
              stars: 8.0,
              duration: '2h',
              cast: 'Cast 1',
              category: 'Action',
              onDisplay: false,
              shortly: false,
              video: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
              others: [
                OthersModel(
                  name: 'Other 1',
                  image:
                      'https://image.tmdb.org/t/p/original/q3k9i0e0s0t9m0j7l0v1.jpg',
                ),
                OthersModel(
                  name: 'Other 2',
                  image:
                      'https://image.tmdb.org/t/p/original/q3k9i0e0s0t9m0j7l0v1.jpg',
                ),
              ],
            ),
          ];

          when(() => homeRepository.getMovies())
              .thenAnswer((_) async => movies);

          final result = await homeRepository.getMovies();
          expect(result, isNotNull);
          expect(result, equals(movies));
        },
      );

      test(
        'Deve retornar um movies error',
        () async {
          when(() => homeRepository.getMovies()).thenThrow(Exception());

          expect(
            () async => await homeRepository.getMovies(),
            throwsA(isA<Exception>()),
          );
        },
      );
    },
  );
}
