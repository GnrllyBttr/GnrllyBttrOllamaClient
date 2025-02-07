// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  VersionResponse generateVersionResponse() {
    return VersionResponse(
      version: faker.lorem.word(),
    );
  }

  Map<String, dynamic> generateVersionResponseJson() {
    return <String, dynamic>{
      'version': faker.lorem.word(),
    };
  }

  group('Given a VersionResponse instance', () {
    group('When creating a VersionResponse with required fields', () {
      test('Then it should store the provided values correctly', () {
        final response = generateVersionResponse();

        expect(response.version, isNotEmpty);
      });
    });

    group('When creating a VersionResponse from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = generateVersionResponseJson();
        final response = VersionResponse.fromJson(json);

        expect(response.version, equals(json['version']));
      });
    });

    group('When converting VersionResponse to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final response = generateVersionResponse();
        final json = response.toJson();

        expect(json['version'], equals(response.version));
      });
    });

    group('When comparing VersionResponse instances', () {
      test('Then identical instances should be equal', () {
        final response1 = generateVersionResponse();
        final response2 = VersionResponse(version: response1.version);

        expect(response1, equals(response2));
      });

      test('Then instances with different values should not be equal', () {
        final response1 = generateVersionResponse();
        final response2 = generateVersionResponse();

        expect(response1, isNot(equals(response2)));
      });
    });
  });
}
