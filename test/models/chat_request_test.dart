// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';
import 'package:gnrllybttr_ollama_client/src/values/values.dart';

void main() {
  final faker = Faker();

  ChatRequest generateChatRequest({bool withAllFields = false}) {
    return ChatRequest(
      model: faker.lorem.word(),
      messages: <ChatMessage>[
        ChatMessage(
          role: ChatMessageRole.user,
          content: faker.lorem.sentence(),
        ),
      ],
      tools: withAllFields
          ? <Tool>[
              Tool(
                type: faker.lorem.word(),
                function: FunctionDef(
                  name: faker.lorem.word(),
                  description: faker.lorem.sentence(),
                  parameters: <String, dynamic>{
                    'param1': faker.lorem.word(),
                    'param2': faker.randomGenerator.integer(100),
                  },
                ),
              ),
            ]
          : null,
      format: withAllFields ? faker.lorem.word() : null,
      options: withAllFields
          ? ModelOptions(
              temperature: faker.randomGenerator.decimal(),
            )
          : null,
      stream: withAllFields ? faker.randomGenerator.boolean() : null,
      keepAlive: withAllFields
          ? faker.randomGenerator
              .integer(
                100,
              )
              .toString()
          : null,
    );
  }

  Map<String, dynamic> generateChatRequestJson({bool withAllFields = false}) {
    final request = generateChatRequest(withAllFields: withAllFields);

    return <String, dynamic>{
      'model': request.model,
      'messages': request.messages
          .map(
            (message) => message.toJson(),
          )
          .toList(),
      if (withAllFields)
        'tools': request.tools?.map((t) => t.toJson()).toList(),
      if (withAllFields) 'format': request.format,
      if (withAllFields) 'options': request.options?.toJson(),
      if (withAllFields) 'stream': request.stream,
      if (withAllFields) 'keep_alive': request.keepAlive,
    };
  }

  group('Given a ChatRequest instance', () {
    group('When creating a ChatRequest with required fields only', () {
      test('Then it should store the provided values correctly', () {
        final request = generateChatRequest();

        expect(request.model, isNotEmpty);
        expect(request.messages, isNotEmpty);
        expect(request.tools, isNull);
        expect(request.format, isNull);
        expect(request.options, isNull);
        expect(request.stream, isNull);
        expect(request.keepAlive, isNull);
      });
    });

    group('When creating a ChatRequest with all fields', () {
      test('Then it should store all provided values correctly', () {
        final request = generateChatRequest(withAllFields: true);

        expect(request.model, isNotEmpty);
        expect(request.messages, isNotEmpty);
        expect(request.tools, isNotEmpty);
        expect(request.format, isNotEmpty);
        expect(request.options, isNotNull);
        expect(request.stream, isNotNull);
        expect(request.keepAlive, isNotEmpty);
      });
    });

    group('When creating a ChatRequest from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = generateChatRequestJson();
        final request = ChatRequest.fromJson(json);

        expect(request.model, equals(json['model']));
        expect(
          request.messages.map((message) => message.toJson()).toList(),
          equals(json['messages']),
        );
        expect(request.tools, isNull);
        expect(request.format, isNull);
        expect(request.options, isNull);
        expect(request.stream, isNull);
        expect(request.keepAlive, isNull);
      });

      test('Then it should parse all fields correctly', () {
        final json = generateChatRequestJson(withAllFields: true);
        final request = ChatRequest.fromJson(json);

        expect(request.model, equals(json['model']));
        expect(
          request.messages.map((message) => message.toJson()).toList(),
          equals(json['messages']),
        );
        expect(
          request.tools?.map((tool) => tool.toJson()).toList(),
          equals(json['tools']),
        );
        expect(request.format, equals(json['format']));
        expect(request.options?.toJson(), equals(json['options']));
        expect(request.stream, equals(json['stream']));
        expect(request.keepAlive, equals(json['keep_alive']));
      });
    });

    group('When converting ChatRequest to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final request = generateChatRequest();
        final json = request.toJson();

        expect(json['model'], equals(request.model));
        expect(
          json['messages'],
          equals(request.messages.map((message) => message.toJson()).toList()),
        );
        expect(json.containsKey('tools'), isFalse);
        expect(json.containsKey('format'), isFalse);
        expect(json.containsKey('options'), isFalse);
        expect(json.containsKey('stream'), isFalse);
        expect(json.containsKey('keep_alive'), isFalse);
      });

      test('Then it should serialize all fields correctly', () {
        final request = generateChatRequest(withAllFields: true);
        final json = request.toJson();

        expect(json['model'], equals(request.model));
        expect(
          json['messages'],
          equals(request.messages.map((message) => message.toJson()).toList()),
        );
        expect(
          json['tools'],
          equals(request.tools?.map((tool) => tool.toJson()).toList()),
        );
        expect(json['format'], equals(request.format));
        expect(json['options'], equals(request.options?.toJson()));
        expect(json['stream'], equals(request.stream));
        expect(json['keep_alive'], equals(request.keepAlive));
      });
    });

    group('When comparing ChatRequest instances', () {
      test('Then identical requests should be equal', () {
        final request1 = generateChatRequest(withAllFields: true);
        final request2 = ChatRequest(
          model: request1.model,
          messages: request1.messages,
          tools: request1.tools,
          format: request1.format,
          options: request1.options,
          stream: request1.stream,
          keepAlive: request1.keepAlive,
        );

        expect(request1, equals(request2));
      });

      test('Then requests with different values should not be equal', () {
        final request1 = generateChatRequest(withAllFields: true);
        final request2 = generateChatRequest(withAllFields: true);

        expect(request1, isNot(equals(request2)));
      });
    });
  });
}
