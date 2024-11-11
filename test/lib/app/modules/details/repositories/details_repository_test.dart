import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movies/app/core/models/models.dart';
import 'package:movies/app/modules/details/repositories/details_repository.dart';

class DetailsRepositoryMock extends Mock implements DetailsRepository {}

void main() {
  late DetailsRepositoryMock detailsRepository;

  setUp(() {
    detailsRepository = DetailsRepositoryMock();
  });
  group(
    'DetailsRepository / ',
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

          when(() => detailsRepository.getMovies())
              .thenAnswer((_) async => movies);

          final result = await detailsRepository.getMovies();
          expect(result, isNotNull);
          expect(result, equals(movies));
        },
      );

      test(
        'Deve retornar um details error',
        () async {
          when(() => detailsRepository.getMovies()).thenThrow(Exception());

          expect(
            () async => await detailsRepository.getMovies(),
            throwsA(isA<Exception>()),
          );
        },
      );
    },
  );
}
