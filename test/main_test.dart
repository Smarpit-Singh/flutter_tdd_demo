import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../lib/main.dart';
import 'main_test.mocks.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([http.Client])
void main() {

  //For grouping of multiple tests
  group('fetchAlbum', () {

    //Test number 1
    test('returns an Album if the http call completes successfully', () async {
      final client = MockClient();

      when(client.get(Uri.https('jsonplaceholder.typicode.com', 'albums/1')))
          .thenAnswer((_) async => http.Response('{"userId": 1, "id": 2, "title": "mock"}', 200));

      expect(await fetchAlbum(client), isA<Album>());
    });

    //Test number 2
    test('throws an exception if the http call completes with an error', () {
      final client = MockClient();

      when(client.get(Uri.https('jsonplaceholder.typicode.com', 'albums/1')))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(fetchAlbum(client), throwsException);
    });
  });
}

/** flutter pub run build_runner build
    (Command for generation mocks files)*/

/** flutter test test/main_test.dart
    (Command for running specific test)*/