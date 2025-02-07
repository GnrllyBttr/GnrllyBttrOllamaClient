// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  ModelDetails generateModelDetails() {
    return ModelDetails(
      format: faker.lorem.word(),
      family: faker.lorem.word(),
    );
  }

  ModelStatus generateModelStatus() {
    return ModelStatus(
      name: faker.lorem.word(),
      model: faker.lorem.word(),
      size: faker.randomGenerator.integer(1000),
      digest: faker.lorem.word(),
      details: generateModelDetails(),
      expiresAt: faker.date.dateTime(),
      sizeVram: faker.randomGenerator.integer(1000),
    );
  }

  Map<String, dynamic> generateModelStatusJson() {
    final status = generateModelStatus();

    return <String, dynamic>{
      'name': status.name,
      'model': status.model,
      'size': status.size,
      'digest': status.digest,
      'details': status.details.toJson(),
      'expires_at': status.expiresAt.toIso8601String(),
      'size_vram': status.sizeVram,
    };
  }

  group('Given a ModelStatus instance', () {
    group('When creating a ModelStatus with all fields', () {
      test('Then it should store all provided values correctly', () {
        final status = generateModelStatus();

        expect(status.name, isNotEmpty);
        expect(status.model, isNotEmpty);
        expect(status.size, isNotNull);
        expect(status.digest, isNotEmpty);
        expect(status.details, isNotNull);
        expect(status.expiresAt, isNotNull);
        expect(status.sizeVram, isNotNull);
      });
    });

    group('When creating a ModelStatus from JSON', () {
      test('Then it should parse all fields correctly', () {
        final json = generateModelStatusJson();
        final status = ModelStatus.fromJson(json);

        expect(status.name, equals(json['name']));
        expect(status.model, equals(json['model']));
        expect(status.size, equals(json['size']));
        expect(status.digest, equals(json['digest']));
        expect(status.details.format, equals(json['details']['format']));
        expect(status.details.family, equals(json['details']['family']));
        expect(status.expiresAt, equals(DateTime.parse(json['expires_at'])));
        expect(status.sizeVram, equals(json['size_vram']));
      });
    });

    group('When converting ModelStatus to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final status = generateModelStatus();
        final json = status.toJson();

        expect(json['name'], equals(status.name));
        expect(json['model'], equals(status.model));
        expect(json['size'], equals(status.size));
        expect(json['digest'], equals(status.digest));
        expect(json['details']['format'], equals(status.details.format));
        expect(json['details']['family'], equals(status.details.family));
        expect(json.containsKey('expires_at'), isTrue);
        expect(json.containsKey('size_vram'), isTrue);
      });

      test('Then it should serialize all fields correctly', () {
        final status = generateModelStatus();
        final json = status.toJson();

        expect(json['name'], equals(status.name));
        expect(json['model'], equals(status.model));
        expect(json['size'], equals(status.size));
        expect(json['digest'], equals(status.digest));
        expect(json['details']['format'], equals(status.details.format));
        expect(json['details']['family'], equals(status.details.family));
        expect(json['expires_at'], equals(status.expiresAt.toIso8601String()));
        expect(json['size_vram'], equals(status.sizeVram));
      });
    });

    group('When comparing ModelStatus instances', () {
      test('Then identical instances should be equal', () {
        final status1 = generateModelStatus();
        final status2 = ModelStatus(
          name: status1.name,
          model: status1.model,
          size: status1.size,
          digest: status1.digest,
          details: status1.details,
          expiresAt: status1.expiresAt,
          sizeVram: status1.sizeVram,
        );

        expect(status1, equals(status2));
      });

      test('Then instances with different values should not be equal', () {
        final status1 = generateModelStatus();
        final status2 = generateModelStatus();

        expect(status1, isNot(equals(status2)));
      });
    });
  });
}
