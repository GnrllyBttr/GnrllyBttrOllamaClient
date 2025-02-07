// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  PushModelRequest generatePushModelRequest({bool withAllFields = false}) {
    return PushModelRequest(
      model: faker.lorem.word(),
      insecure: withAllFields ? faker.randomGenerator.boolean() : null,
      stream: withAllFields ? faker.randomGenerator.boolean() : null,
    );
  }

  Map<String, dynamic> generatePushModelRequestJson({
    bool withAllFields = false,
  }) {
    final request = generatePushModelRequest(withAllFields: withAllFields);

    return <String, dynamic>{
      'model': request.model,
      if (withAllFields) 'insecure': request.insecure,
      if (withAllFields) 'stream': request.stream,
    };
  }

  group('Given a PushModelRequest instance', () {
    group('When creating a PushModelRequest with required fields', () {
      test('Then it should store the provided values correctly', () {
        final request = generatePushModelRequest();

        expect(request.model, isNotEmpty);
        expect(request.insecure, isNull);
        expect(request.stream, isNull);
      });
    });

    group('When creating a PushModelRequest with all fields', () {
      test('Then it should store all provided values correctly', () {
        final request = generatePushModelRequest(withAllFields: true);

        expect(request.model, isNotEmpty);
        expect(request.insecure, isNotNull);
        expect(request.stream, isNotNull);
      });
    });

    group('When creating a PushModelRequest from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = generatePushModelRequestJson();
        final request = PushModelRequest.fromJson(json);

        expect(request.model, equals(json['model']));
        expect(request.insecure, isNull);
        expect(request.stream, isNull);
      });

      test('Then it should parse all fields correctly', () {
        final json = generatePushModelRequestJson(withAllFields: true);
        final request = PushModelRequest.fromJson(json);

        expect(request.model, equals(json['model']));
        expect(request.insecure, equals(json['insecure']));
        expect(request.stream, equals(json['stream']));
      });
    });

    group('When converting PushModelRequest to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final request = generatePushModelRequest();
        final json = request.toJson();

        expect(json['model'], equals(request.model));
        expect(json.containsKey('insecure'), isFalse);
        expect(json.containsKey('stream'), isFalse);
      });

      test('Then it should serialize all fields correctly', () {
        final request = generatePushModelRequest(withAllFields: true);
        final json = request.toJson();

        expect(json['model'], equals(request.model));
        expect(json['insecure'], equals(request.insecure));
        expect(json['stream'], equals(request.stream));
      });
    });

    group('When comparing PushModelRequest instances', () {
      test('Then identical instances should be equal', () {
        final request1 = generatePushModelRequest(withAllFields: true);
        final request2 = PushModelRequest(
          model: request1.model,
          insecure: request1.insecure,
          stream: request1.stream,
        );

        expect(request1, equals(request2));
      });

      test('Then instances with different values should not be equal', () {
        final request1 = generatePushModelRequest(withAllFields: true);
        final request2 = generatePushModelRequest(withAllFields: true);

        expect(request1, isNot(equals(request2)));
      });
    });
  });
}
