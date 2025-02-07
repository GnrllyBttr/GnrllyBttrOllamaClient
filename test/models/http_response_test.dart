// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  HttpResponse generateHttpResponse({bool withAllFields = false}) {
    return HttpResponse(
      data: {'key': faker.lorem.word()},
      statusCode: withAllFields ? faker.randomGenerator.integer(500) : null,
      statusMessage: withAllFields ? faker.lorem.sentence() : null,
      headers: withAllFields ? {'Content-Type': 'application/json'} : {},
    );
  }

  group('Given an HttpResponse instance', () {
    group('When creating an HttpResponse with required fields', () {
      test('Then it should store the provided values correctly', () {
        final response = generateHttpResponse();

        expect(response.data, isNotEmpty);
        expect(response.statusCode, isNull);
        expect(response.statusMessage, isNull);
        expect(response.headers, isEmpty);
      });
    });

    group('When creating an HttpResponse with all fields', () {
      test('Then it should store all provided values correctly', () {
        final response = generateHttpResponse(withAllFields: true);

        expect(response.data, isNotEmpty);
        expect(response.statusCode, isNotNull);
        expect(response.statusMessage, isNotNull);
        expect(response.headers, isNotEmpty);
      });
    });
  });
}
