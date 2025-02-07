// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  FunctionCall generateFunctionCall() {
    return FunctionCall(
      name: faker.lorem.word(),
      arguments: {'query': faker.lorem.word()},
    );
  }

  Map<String, dynamic> generateFunctionCallJson() {
    final functionCall = generateFunctionCall();

    return <String, dynamic>{
      'name': functionCall.name,
      'arguments': functionCall.arguments,
    };
  }

  group('Given a FunctionCall instance', () {
    group('When creating a FunctionCall with required fields', () {
      test('Then it should store the provided values correctly', () {
        final functionCall = generateFunctionCall();

        expect(functionCall.name, isNotEmpty);
        expect(functionCall.arguments, isNotEmpty);
      });
    });

    group('When creating a FunctionCall from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = generateFunctionCallJson();
        final functionCall = FunctionCall.fromJson(json);

        expect(functionCall.name, equals(json['name']));
        expect(functionCall.arguments, equals(json['arguments']));
      });
    });

    group('When converting FunctionCall to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final functionCall = generateFunctionCall();
        final json = functionCall.toJson();

        expect(json['name'], equals(functionCall.name));
        expect(json['arguments'], equals(functionCall.arguments));
      });
    });

    group('When comparing FunctionCall instances', () {
      test('Then identical instances should be equal', () {
        final functionCall1 = generateFunctionCall();
        final functionCall2 = FunctionCall(
          name: functionCall1.name,
          arguments: functionCall1.arguments,
        );

        expect(functionCall1, equals(functionCall2));
      });

      test('Then instances with different values should not be equal', () {
        final functionCall1 = generateFunctionCall();
        final functionCall2 = generateFunctionCall();

        expect(functionCall1, isNot(equals(functionCall2)));
      });
    });
  });
}
