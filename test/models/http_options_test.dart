// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  HttpOptions generateHttpOptions({bool withAllFields = false}) {
    return HttpOptions(
      headers: withAllFields
          ? {'Authorization': 'Bearer ${faker.lorem.word()}'}
          : {},
      responseType: withAllFields ? faker.lorem.word() : null,
    );
  }

  group('Given an HttpOptions instance', () {
    group('When creating an HttpOptions with default values', () {
      test('Then it should have empty headers and null responseType', () {
        final options = generateHttpOptions();

        expect(options.headers, isEmpty);
        expect(options.responseType, isNull);
      });
    });

    group('When creating an HttpOptions with custom headers', () {
      test('Then it should store the provided headers correctly', () {
        final headers = {'Authorization': 'Bearer token'};
        final options = HttpOptions(headers: headers);

        expect(options.headers, equals(headers));
        expect(options.responseType, isNull);
      });
    });

    group('When creating an HttpOptions with a responseType', () {
      test('Then it should store the provided responseType correctly', () {
        final responseType = 'json';
        final options = HttpOptions(responseType: responseType);

        expect(options.headers, isEmpty);
        expect(options.responseType, equals(responseType));
      });
    });

    group('When creating an HttpOptions with custom headers and responseType',
        () {
      test('Then it should store all provided values correctly', () {
        final headers = {'Authorization': 'Bearer token'};
        final responseType = 'json';
        final options =
            HttpOptions(headers: headers, responseType: responseType);

        expect(options.headers, equals(headers));
        expect(options.responseType, equals(responseType));
      });
    });
  });
}
