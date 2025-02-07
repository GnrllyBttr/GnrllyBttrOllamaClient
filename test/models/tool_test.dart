// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  Tool generateTool() {
    return Tool(
      type: faker.lorem.word(),
      function: FunctionDef(
        name: faker.lorem.word(),
        description: faker.lorem.sentence(),
        parameters: <String, dynamic>{
          'param1': faker.lorem.word(),
          'param2': faker.randomGenerator.integer(100),
        },
      ),
    );
  }

  Map<String, dynamic> generateToolJson() {
    final tool = generateTool();

    return <String, dynamic>{
      'type': tool.type,
      'function': tool.function.toJson(),
    };
  }

  group('Given a Tool instance', () {
    group('When creating a Tool with required fields', () {
      test('Then it should store the provided values correctly', () {
        final tool = generateTool();

        expect(tool.type, isNotEmpty);
        expect(tool.function.name, isNotEmpty);
      });
    });

    group('When creating a Tool from JSON', () {
      test('Then it should parse all fields correctly', () {
        final json = generateToolJson();
        final tool = Tool.fromJson(json);

        expect(tool.type, equals(json['type']));
        expect(tool.function.name, equals(json['function']['name']));
      });
    });

    group('When converting Tool to JSON', () {
      test('Then it should serialize all fields correctly', () {
        final tool = generateTool();
        final json = tool.toJson();

        expect(json['type'], equals(tool.type));
        expect(json['function']['name'], equals(tool.function.name));
      });
    });

    group('When comparing Tool instances', () {
      test('Then identical instances should be equal', () {
        final tool1 = generateTool();
        final tool2 = Tool(
          type: tool1.type,
          function: tool1.function,
        );

        expect(tool1, equals(tool2));
      });

      test('Then instances with different values should not be equal', () {
        final tool1 = generateTool();
        final tool2 = generateTool();

        expect(tool1, isNot(equals(tool2)));
      });
    });
  });
}
