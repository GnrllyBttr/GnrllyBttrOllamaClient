// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  PushStatus generatePushStatus({bool withAllFields = false}) {
    return PushStatus(
      status: faker.lorem.word(),
      digest: withAllFields ? faker.lorem.word() : null,
      total: withAllFields ? faker.randomGenerator.integer(1000) : null,
    );
  }

  Map<String, dynamic> generatePushStatusJson({bool withAllFields = false}) {
    final status = generatePushStatus(withAllFields: withAllFields);

    return <String, dynamic>{
      'status': status.status,
      if (withAllFields) 'digest': status.digest,
      if (withAllFields) 'total': status.total,
    };
  }

  group('Given a PushStatus instance', () {
    group('When creating a PushStatus with required fields', () {
      test('Then it should store the provided values correctly', () {
        final status = generatePushStatus();

        expect(status.status, isNotEmpty);
        expect(status.digest, isNull);
        expect(status.total, isNull);
      });
    });

    group('When creating a PushStatus with all fields', () {
      test('Then it should store all provided values correctly', () {
        final status = generatePushStatus(withAllFields: true);

        expect(status.status, isNotEmpty);
        expect(status.digest, isNotEmpty);
        expect(status.total, isNotNull);
      });
    });

    group('When creating a PushStatus from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = generatePushStatusJson();
        final status = PushStatus.fromJson(json);

        expect(status.status, equals(json['status']));
        expect(status.digest, isNull);
        expect(status.total, isNull);
      });

      test('Then it should parse all fields correctly', () {
        final json = generatePushStatusJson(withAllFields: true);
        final status = PushStatus.fromJson(json);

        expect(status.status, equals(json['status']));
        expect(status.digest, equals(json['digest']));
        expect(status.total, equals(json['total']));
      });
    });

    group('When converting PushStatus to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final status = generatePushStatus();
        final json = status.toJson();

        expect(json['status'], equals(status.status));
        expect(json.containsKey('digest'), isFalse);
        expect(json.containsKey('total'), isFalse);
      });

      test('Then it should serialize all fields correctly', () {
        final status = generatePushStatus(withAllFields: true);
        final json = status.toJson();

        expect(json['status'], equals(status.status));
        expect(json['digest'], equals(status.digest));
        expect(json['total'], equals(status.total));
      });
    });

    group('When comparing PushStatus instances', () {
      test('Then identical instances should be equal', () {
        final status1 = generatePushStatus(withAllFields: true);
        final status2 = PushStatus(
          status: status1.status,
          digest: status1.digest,
          total: status1.total,
        );

        expect(status1, equals(status2));
      });

      test('Then instances with different values should not be equal', () {
        final status1 = generatePushStatus(withAllFields: true);
        final status2 = generatePushStatus(withAllFields: true);

        expect(status1, isNot(equals(status2)));
      });
    });
  });
}
