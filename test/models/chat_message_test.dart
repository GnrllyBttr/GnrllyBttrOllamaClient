// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';
import 'package:gnrllybttr_ollama_client/src/values/values.dart';

void main() {
  final faker = Faker();

  ChatMessage generateChatMessage({bool withAllFields = false}) {
    return ChatMessage(
      role: ChatMessageRole.user,
      content: faker.lorem.sentence(),
      images: withAllFields ? <String>[faker.image.loremPicsum()] : null,
      toolCalls: withAllFields
          ? <ToolCall>[
              ToolCall(
                function: FunctionCall(
                  name: faker.lorem.word(),
                  arguments: <String, dynamic>{},
                ),
              ),
            ]
          : null,
    );
  }

  Map<String, dynamic> generateChatMessageJson({bool withAllFields = false}) {
    final message = generateChatMessage(withAllFields: withAllFields);

    return <String, dynamic>{
      'role': message.role.toString().split('.').last,
      'content': message.content,
      if (withAllFields) 'images': message.images,
      if (withAllFields)
        'tool_calls': message.toolCalls?.map((t) => t.toJson()).toList(),
    };
  }

  group('Given a ChatMessage instance', () {
    group('When creating a ChatMessage with required fields only', () {
      test('Then it should store the provided values correctly', () {
        final message = generateChatMessage();

        expect(message.role, isNotNull);
        expect(message.content, isNotEmpty);
        expect(message.images, isNull);
        expect(message.toolCalls, isNull);
      });
    });

    group('When creating a ChatMessage with all fields', () {
      test('Then it should store all provided values correctly', () {
        final message = generateChatMessage(withAllFields: true);

        expect(message.role, isNotNull);
        expect(message.content, isNotEmpty);
        expect(message.images, isNotEmpty);
        expect(message.toolCalls, isNotEmpty);
      });
    });

    group('When creating a ChatMessage from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = generateChatMessageJson();
        final message = ChatMessage.fromJson(json);

        expect(message.role.toString().split('.').last, equals(json['role']));
        expect(message.content, equals(json['content']));
        expect(message.images, isNull);
        expect(message.toolCalls, isNull);
      });

      test('Then it should parse all fields correctly', () {
        final json = generateChatMessageJson(withAllFields: true);
        final message = ChatMessage.fromJson(json);

        expect(message.role.toString().split('.').last, equals(json['role']));
        expect(message.content, equals(json['content']));
        expect(message.images, equals(json['images']));
        expect(message.toolCalls?.map((t) => t.toJson()).toList(),
            equals(json['tool_calls']));
      });
    });

    group('When converting ChatMessage to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final message = generateChatMessage();
        final json = message.toJson();

        expect(json['role'], equals(message.role.toString().split('.').last));
        expect(json['content'], equals(message.content));
        expect(json.containsKey('images'), isFalse);
        expect(json.containsKey('tool_calls'), isFalse);
      });

      test('Then it should serialize all fields correctly', () {
        final message = generateChatMessage(withAllFields: true);
        final json = message.toJson();

        expect(json['role'], equals(message.role.toString().split('.').last));
        expect(json['content'], equals(message.content));
        expect(json['images'], equals(message.images));
        expect(json['tool_calls'],
            equals(message.toolCalls?.map((t) => t.toJson()).toList()));
      });
    });

    group('When comparing ChatMessage instances', () {
      test('Then identical instances should be equal', () {
        final message1 = generateChatMessage(withAllFields: true);
        final message2 = ChatMessage(
          role: message1.role,
          content: message1.content,
          images: message1.images,
          toolCalls: message1.toolCalls,
        );

        expect(message1, equals(message2));
      });

      test('Then instances with different values should not be equal', () {
        final message1 = generateChatMessage(withAllFields: true);
        final message2 = generateChatMessage(withAllFields: true);

        expect(message1, isNot(equals(message2)));
      });
    });
  });
}
