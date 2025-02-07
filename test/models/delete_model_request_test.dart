// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  DeleteModelRequest generateDeleteModelRequest() {
    return DeleteModelRequest(
      model: faker.lorem.word(),
    );
  }

  Map<String, dynamic> generateDeleteModelRequestJson() {
    final request = generateDeleteModelRequest();

    return <String, dynamic>{
      'model': request.model,
    };
  }

  group('Given a DeleteModelRequest instance', () {
    group('When creating a DeleteModelRequest with required fields', () {
      test('Then it should store the provided values correctly', () {
        final request = generateDeleteModelRequest();

        expect(request.model, isNotEmpty);
      });
    });

    group('When creating a DeleteModelRequest from JSON', () {
      test('Then it should parse all fields correctly', () {
        final json = generateDeleteModelRequestJson();
        final request = DeleteModelRequest.fromJson(json);

        expect(request.model, equals(json['model']));
      });
    });

    group('When converting DeleteModelRequest to JSON', () {
      test('Then it should serialize all fields correctly', () {
        final request = generateDeleteModelRequest();
        final json = request.toJson();

        expect(json['model'], equals(request.model));
      });
    });

    group('When comparing DeleteModelRequest instances', () {
      test('Then identical instances should be equal', () {
        final request1 = generateDeleteModelRequest();
        final request2 = DeleteModelRequest(
          model: request1.model,
        );

        expect(request1, equals(request2));
      });

      test('Then instances with different values should not be equal', () {
        final request1 = generateDeleteModelRequest();
        final request2 = generateDeleteModelRequest();

        expect(request1, isNot(equals(request2)));
      });
    });
  });
}
