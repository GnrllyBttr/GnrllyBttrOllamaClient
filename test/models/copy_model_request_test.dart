// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  CopyModelRequest generateCopyModelRequest() {
    return CopyModelRequest(
      source: faker.lorem.word(),
      destination: faker.lorem.word(),
    );
  }

  Map<String, dynamic> generateCopyModelRequestJson() {
    final request = generateCopyModelRequest();

    return <String, dynamic>{
      'source': request.source,
      'destination': request.destination,
    };
  }

  group('Given a CopyModelRequest instance', () {
    group('When creating a CopyModelRequest with required fields', () {
      test('Then it should store the provided values correctly', () {
        final request = generateCopyModelRequest();

        expect(request.source, isNotEmpty);
        expect(request.destination, isNotEmpty);
      });
    });

    group('When creating a CopyModelRequest from JSON', () {
      test('Then it should parse all fields correctly', () {
        final json = generateCopyModelRequestJson();
        final request = CopyModelRequest.fromJson(json);

        expect(request.source, equals(json['source']));
        expect(request.destination, equals(json['destination']));
      });
    });

    group('When converting CopyModelRequest to JSON', () {
      test('Then it should serialize all fields correctly', () {
        final request = generateCopyModelRequest();
        final json = request.toJson();

        expect(json['source'], equals(request.source));
        expect(json['destination'], equals(request.destination));
      });
    });

    group('When comparing CopyModelRequest instances', () {
      test('Then identical instances should be equal', () {
        final request1 = generateCopyModelRequest();
        final request2 = CopyModelRequest(
          source: request1.source,
          destination: request1.destination,
        );

        expect(request1, equals(request2));
      });

      test('Then instances with different values should not be equal', () {
        final request1 = generateCopyModelRequest();
        final request2 = generateCopyModelRequest();

        expect(request1, isNot(equals(request2)));
      });
    });
  });
}
