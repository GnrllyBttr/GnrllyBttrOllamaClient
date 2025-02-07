// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  ToolCall generateToolCall() {
    return ToolCall(
      function: FunctionCall(
        name: faker.lorem.word(),
        arguments: <String, dynamic>{
          'query': faker.lorem.word(),
        },
      ),
    );
  }

  Map<String, dynamic> generateToolCallJson() {
    final toolCall = generateToolCall();

    return <String, dynamic>{
      'function': <String, dynamic>{
        'name': toolCall.function.name,
        'arguments': toolCall.function.arguments,
      },
    };
  }

  group('Given a ToolCall instance', () {
    group('When creating a ToolCall with required fields', () {
      test('Then it should store the provided values correctly', () {
        final toolCall = generateToolCall();

        expect(toolCall.function.name, isNotEmpty);
        expect(toolCall.function.arguments['query'], isNotEmpty);
      });
    });

    group('When creating a ToolCall from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = generateToolCallJson();
        final toolCall = ToolCall.fromJson(json);

        expect(
          toolCall.function.name,
          equals(json['function']['name']),
        );
        expect(
          toolCall.function.arguments['query'],
          equals(json['function']['arguments']['query']),
        );
      });
    });

    group('When converting ToolCall to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final toolCall = generateToolCall();
        final json = toolCall.toJson();

        expect(
          json['function']['name'],
          equals(toolCall.function.name),
        );
        expect(
          json['function']['arguments']['query'],
          equals(toolCall.function.arguments['query']),
        );
      });
    });

    group('When comparing ToolCall instances', () {
      test('Then identical instances should be equal', () {
        final toolCall1 = generateToolCall();
        final toolCall2 = ToolCall(
          function: FunctionCall(
            name: toolCall1.function.name,
            arguments: toolCall1.function.arguments,
          ),
        );

        expect(toolCall1, equals(toolCall2));
      });

      test('Then instances with different values should not be equal', () {
        final toolCall1 = generateToolCall();
        final toolCall2 = generateToolCall();

        expect(
          toolCall1,
          isNot(equals(toolCall2)),
        );
      });
    });
  });
}
