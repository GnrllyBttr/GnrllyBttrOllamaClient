// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  FunctionDef generateFunctionDef() {
    return FunctionDef(
      name: faker.lorem.word(),
      description: faker.lorem.sentence(),
      parameters: <String, dynamic>{
        'param1': faker.lorem.word(),
        'param2': faker.randomGenerator.integer(100),
      },
    );
  }

  Map<String, dynamic> generateFunctionDefJson() {
    final functionDef = generateFunctionDef();

    return <String, dynamic>{
      'name': functionDef.name,
      'description': functionDef.description,
      'parameters': functionDef.parameters,
    };
  }

  group('Given a FunctionDef instance', () {
    group('When creating a FunctionDef with required fields', () {
      test('Then it should store the provided values correctly', () {
        final functionDef = generateFunctionDef();

        expect(functionDef.name, isNotEmpty);
        expect(functionDef.description, isNotEmpty);
        expect(functionDef.parameters, isNotEmpty);
      });
    });

    group('When creating a FunctionDef from JSON', () {
      test('Then it should parse all fields correctly', () {
        final json = generateFunctionDefJson();
        final functionDef = FunctionDef.fromJson(json);

        expect(functionDef.name, equals(json['name']));
        expect(functionDef.description, equals(json['description']));
        expect(functionDef.parameters, equals(json['parameters']));
      });
    });

    group('When converting FunctionDef to JSON', () {
      test('Then it should serialize all fields correctly', () {
        final functionDef = generateFunctionDef();
        final json = functionDef.toJson();

        expect(json['name'], equals(functionDef.name));
        expect(json['description'], equals(functionDef.description));
        expect(json['parameters'], equals(functionDef.parameters));
      });
    });

    group('When comparing FunctionDef instances', () {
      test('Then identical instances should be equal', () {
        final functionDef1 = generateFunctionDef();
        final functionDef2 = FunctionDef(
          name: functionDef1.name,
          description: functionDef1.description,
          parameters: functionDef1.parameters,
        );

        expect(functionDef1, equals(functionDef2));
      });

      test('Then instances with different values should not be equal', () {
        final functionDef1 = generateFunctionDef();
        final functionDef2 = generateFunctionDef();

        expect(functionDef1, isNot(equals(functionDef2)));
      });
    });
  });
}
