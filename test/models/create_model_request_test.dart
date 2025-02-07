// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';
import 'package:gnrllybttr_ollama_client/src/values/values.dart';

void main() {
  final faker = Faker();

  CreateModelRequest generateCreateModelRequest({bool withAllFields = false}) {
    return CreateModelRequest(
      model: faker.lorem.word(),
      from: withAllFields ? faker.lorem.word() : null,
      files: withAllFields
          ? <String, String>{
              faker.lorem.word(): faker.lorem.sentence(),
            }
          : null,
      adapters: withAllFields
          ? <String, String>{
              faker.lorem.word(): faker.lorem.sentence(),
            }
          : null,
      template: withAllFields ? faker.lorem.word() : null,
      license: withAllFields ? faker.lorem.word() : null,
      system: withAllFields ? faker.lorem.sentence() : null,
      parameters: withAllFields
          ? <String, dynamic>{
              faker.lorem.word(): faker.randomGenerator.integer(100),
            }
          : null,
      messages: withAllFields
          ? <ChatMessage>[
              ChatMessage(
                role: ChatMessageRole.user,
                content: faker.lorem.sentence(),
              ),
            ]
          : null,
      stream: withAllFields ? faker.randomGenerator.boolean() : null,
      quantize: withAllFields ? faker.lorem.word() : null,
    );
  }

  Map<String, dynamic> generateCreateModelRequestJson({
    bool withAllFields = false,
  }) {
    final request = generateCreateModelRequest(withAllFields: withAllFields);

    return <String, dynamic>{
      'model': request.model,
      if (withAllFields) 'from': request.from,
      if (withAllFields) 'files': request.files,
      if (withAllFields) 'adapters': request.adapters,
      if (withAllFields) 'template': request.template,
      if (withAllFields) 'license': request.license,
      if (withAllFields) 'system': request.system,
      if (withAllFields) 'parameters': request.parameters,
      if (withAllFields)
        'messages': request.messages
            ?.map(
              (message) => message.toJson(),
            )
            .toList(),
      if (withAllFields) 'stream': request.stream,
      if (withAllFields) 'quantize': request.quantize,
    };
  }

  group('Given a CreateModelRequest instance', () {
    group('When creating a CreateModelRequest with required fields', () {
      test('Then it should store the provided values correctly', () {
        final request = generateCreateModelRequest();

        expect(request.model, isNotEmpty);
        expect(request.from, isNull);
        expect(request.files, isNull);
        expect(request.adapters, isNull);
        expect(request.template, isNull);
        expect(request.license, isNull);
        expect(request.system, isNull);
        expect(request.parameters, isNull);
        expect(request.messages, isNull);
        expect(request.stream, isNull);
        expect(request.quantize, isNull);
      });
    });

    group('When creating a CreateModelRequest with all fields', () {
      test('Then it should store all provided values correctly', () {
        final request = generateCreateModelRequest(withAllFields: true);

        expect(request.model, isNotEmpty);
        expect(request.from, isNotEmpty);
        expect(request.files, isNotEmpty);
        expect(request.adapters, isNotEmpty);
        expect(request.template, isNotEmpty);
        expect(request.license, isNotEmpty);
        expect(request.system, isNotEmpty);
        expect(request.parameters, isNotEmpty);
        expect(request.messages, isNotEmpty);
        expect(request.stream, isNotNull);
        expect(request.quantize, isNotEmpty);
      });
    });

    group('When creating a CreateModelRequest from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = generateCreateModelRequestJson();
        final request = CreateModelRequest.fromJson(json);

        expect(request.model, equals(json['model']));
        expect(request.from, isNull);
        expect(request.files, isNull);
        expect(request.adapters, isNull);
        expect(request.template, isNull);
        expect(request.license, isNull);
        expect(request.system, isNull);
        expect(request.parameters, isNull);
        expect(request.messages, isNull);
        expect(request.stream, isNull);
        expect(request.quantize, isNull);
      });

      test('Then it should parse all fields correctly', () {
        final json = generateCreateModelRequestJson(withAllFields: true);
        final request = CreateModelRequest.fromJson(json);

        expect(request.model, equals(json['model']));
        expect(request.from, equals(json['from']));
        expect(request.files, equals(json['files']));
        expect(request.adapters, equals(json['adapters']));
        expect(request.template, equals(json['template']));
        expect(request.license, equals(json['license']));
        expect(request.system, equals(json['system']));
        expect(request.parameters, equals(json['parameters']));
        expect(request.messages?.map((m) => m.toJson()).toList(),
            equals(json['messages']));
        expect(request.stream, equals(json['stream']));
        expect(request.quantize, equals(json['quantize']));
      });
    });

    group('When converting CreateModelRequest to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final request = generateCreateModelRequest();
        final json = request.toJson();

        expect(json['model'], equals(request.model));
        expect(json.containsKey('from'), isFalse);
        expect(json.containsKey('files'), isFalse);
        expect(json.containsKey('adapters'), isFalse);
        expect(json.containsKey('template'), isFalse);
        expect(json.containsKey('license'), isFalse);
        expect(json.containsKey('system'), isFalse);
        expect(json.containsKey('parameters'), isFalse);
        expect(json.containsKey('messages'), isFalse);
        expect(json.containsKey('stream'), isFalse);
        expect(json.containsKey('quantize'), isFalse);
      });

      test('Then it should serialize all fields correctly', () {
        final request = generateCreateModelRequest(withAllFields: true);
        final json = request.toJson();

        expect(json['model'], equals(request.model));
        expect(json['from'], equals(request.from));
        expect(json['files'], equals(request.files));
        expect(json['adapters'], equals(request.adapters));
        expect(json['template'], equals(request.template));
        expect(json['license'], equals(request.license));
        expect(json['system'], equals(request.system));
        expect(json['parameters'], equals(request.parameters));
        expect(
          json['messages']?.map((message) => message).toList(),
          equals(request.messages?.map((message) => message.toJson()).toList()),
        );
        expect(json['stream'], equals(request.stream));
        expect(json['quantize'], equals(request.quantize));
      });
    });

    group('When comparing CreateModelRequest instances', () {
      test('Then identical instances should be equal', () {
        final request1 = generateCreateModelRequest(withAllFields: true);
        final request2 = CreateModelRequest(
          model: request1.model,
          from: request1.from,
          files: request1.files,
          adapters: request1.adapters,
          template: request1.template,
          license: request1.license,
          system: request1.system,
          parameters: request1.parameters,
          messages: request1.messages,
          stream: request1.stream,
          quantize: request1.quantize,
        );

        expect(request1, equals(request2));
      });

      test('Then instances with different values should not be equal', () {
        final request1 = generateCreateModelRequest(withAllFields: true);
        final request2 = generateCreateModelRequest(withAllFields: true);

        expect(request1, isNot(equals(request2)));
      });
    });
  });
}
