// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  PullStatus generatePullStatus({bool withAllFields = false}) {
    return PullStatus(
      status: faker.lorem.word(),
      digest: withAllFields ? faker.lorem.word() : null,
      total: withAllFields ? faker.randomGenerator.integer(1000) : null,
      completed: withAllFields ? faker.randomGenerator.integer(1000) : null,
    );
  }

  Map<String, dynamic> generatePullStatusJson({bool withAllFields = false}) {
    final status = generatePullStatus(withAllFields: withAllFields);

    return <String, dynamic>{
      'status': status.status,
      if (withAllFields) 'digest': status.digest,
      if (withAllFields) 'total': status.total,
      if (withAllFields) 'completed': status.completed,
    };
  }

  group('Given a PullStatus instance', () {
    group('When creating a PullStatus with required fields', () {
      test('Then it should store the provided values correctly', () {
        final status = generatePullStatus();

        expect(status.status, isNotEmpty);
        expect(status.digest, isNull);
        expect(status.total, isNull);
        expect(status.completed, isNull);
      });
    });

    group('When creating a PullStatus with all fields', () {
      test('Then it should store all provided values correctly', () {
        final status = generatePullStatus(withAllFields: true);

        expect(status.status, isNotEmpty);
        expect(status.digest, isNotEmpty);
        expect(status.total, isNotNull);
        expect(status.completed, isNotNull);
      });
    });

    group('When creating a PullStatus from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = generatePullStatusJson();
        final status = PullStatus.fromJson(json);

        expect(status.status, equals(json['status']));
        expect(status.digest, isNull);
        expect(status.total, isNull);
        expect(status.completed, isNull);
      });

      test('Then it should parse all fields correctly', () {
        final json = generatePullStatusJson(withAllFields: true);
        final status = PullStatus.fromJson(json);

        expect(status.status, equals(json['status']));
        expect(status.digest, equals(json['digest']));
        expect(status.total, equals(json['total']));
        expect(status.completed, equals(json['completed']));
      });
    });

    group('When converting PullStatus to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final status = generatePullStatus();
        final json = status.toJson();

        expect(json['status'], equals(status.status));
        expect(json.containsKey('digest'), isFalse);
        expect(json.containsKey('total'), isFalse);
        expect(json.containsKey('completed'), isFalse);
      });

      test('Then it should serialize all fields correctly', () {
        final status = generatePullStatus(withAllFields: true);
        final json = status.toJson();

        expect(json['status'], equals(status.status));
        expect(json['digest'], equals(status.digest));
        expect(json['total'], equals(status.total));
        expect(json['completed'], equals(status.completed));
      });
    });

    group('When comparing PullStatus instances', () {
      test('Then identical instances should be equal', () {
        final status1 = generatePullStatus(withAllFields: true);
        final status2 = PullStatus(
          status: status1.status,
          digest: status1.digest,
          total: status1.total,
          completed: status1.completed,
        );

        expect(status1, equals(status2));
      });

      test('Then instances with different values should not be equal', () {
        final status1 = generatePullStatus(withAllFields: true);
        final status2 = generatePullStatus(withAllFields: true);

        expect(status1, isNot(equals(status2)));
      });
    });
  });
}
