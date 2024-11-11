import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movies/app/core/models/models.dart';
import 'package:movies/app/modules/news/repositories/news_repository.dart';

class NewsRepositoryMock extends Mock implements NewsRepository {}

void main() {
  late NewsRepositoryMock newsRepository;

  setUp(() {
    newsRepository = NewsRepositoryMock();
  });

  group(
    'NewsRepository / ',
    () {
      test(
        'Deve retornar uma lista de news',
        () async {
          final news = [
            NewsModel(
              id: 1,
              title: 'Venom',
              image:
                  'https://upload.wikimedia.org/wikipedia/pt/b/b7/Venom_2018.jpg',
              description: 'Sinopse do filme',
              reference: 'Adoro Cinema',
              date: '2022-01-01',
            ),
          ];
          when(() => newsRepository.getNews()).thenAnswer((_) async => news);
          final result = await newsRepository.getNews();
          expect(result, isNotNull);
          expect(result, equals(news));
        },
      );
      test(
        'Deve retornar um news error',
        () async {
          when(() => newsRepository.getNews()).thenThrow(Exception());
          expect(
            () async => await newsRepository.getNews(),
            throwsA(isA<Exception>()),
          );
        },
      );
    },
  );
}
