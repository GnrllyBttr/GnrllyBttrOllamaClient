// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  GenerateRequest generateGenerateRequest({bool withAllFields = false}) {
    return GenerateRequest(
      model: faker.lorem.word(),
      prompt: faker.lorem.sentence(),
      suffix: withAllFields ? faker.lorem.word() : null,
      images: withAllFields ? [faker.lorem.word(), faker.lorem.word()] : null,
      format: withAllFields ? faker.lorem.word() : null,
      options: withAllFields
          ? ModelOptions(temperature: faker.randomGenerator.decimal())
          : null,
      system: withAllFields ? faker.lorem.sentence() : null,
      template: withAllFields ? faker.lorem.sentence() : null,
      stream: withAllFields ? faker.randomGenerator.boolean() : null,
      raw: withAllFields ? faker.randomGenerator.boolean() : null,
      keepAlive:
          withAllFields ? faker.randomGenerator.integer(100).toString() : null,
      context: withAllFields
          ? <int>[
              faker.randomGenerator.integer(100),
              faker.randomGenerator.integer(100)
            ]
          : null,
    );
  }

  Map<String, dynamic> generateGenerateRequestJson(
      {bool withAllFields = false}) {
    final request = generateGenerateRequest(withAllFields: withAllFields);
    return <String, dynamic>{
      'model': request.model,
      'prompt': request.prompt,
      if (withAllFields) 'suffix': request.suffix,
      if (withAllFields) 'images': request.images,
      if (withAllFields) 'format': request.format,
      if (withAllFields) 'options': request.options?.toJson(),
      if (withAllFields) 'system': request.system,
      if (withAllFields) 'template': request.template,
      if (withAllFields) 'stream': request.stream,
      if (withAllFields) 'raw': request.raw,
      if (withAllFields) 'keep_alive': request.keepAlive,
      if (withAllFields) 'context': request.context,
    };
  }

  group('Given a GenerateRequest instance', () {
    group('When creating a GenerateRequest with required fields', () {
      test('Then it should store the provided values correctly', () {
        final request = generateGenerateRequest();

        expect(request.model, isNotEmpty);
        expect(request.prompt, isNotEmpty);
        expect(request.suffix, isNull);
        expect(request.images, isNull);
        expect(request.format, isNull);
        expect(request.options, isNull);
        expect(request.system, isNull);
        expect(request.template, isNull);
        expect(request.stream, isNull);
        expect(request.raw, isNull);
        expect(request.keepAlive, isNull);
        expect(request.context, isNull);
      });
    });

    group('When creating a GenerateRequest with all fields', () {
      test('Then it should store all provided values correctly', () {
        final request = generateGenerateRequest(withAllFields: true);

        expect(request.model, isNotEmpty);
        expect(request.prompt, isNotEmpty);
        expect(request.suffix, isNotNull);
        expect(request.images, isNotNull);
        expect(request.format, isNotNull);
        expect(request.options, isNotNull);
        expect(request.system, isNotNull);
        expect(request.template, isNotNull);
        expect(request.stream, isNotNull);
        expect(request.raw, isNotNull);
        expect(request.keepAlive, isNotNull);
        expect(request.context, isNotNull);
      });
    });

    group('When creating a GenerateRequest from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = generateGenerateRequestJson();
        final request = GenerateRequest.fromJson(json);

        expect(request.model, equals(json['model']));
        expect(request.prompt, equals(json['prompt']));
        expect(request.suffix, isNull);
        expect(request.images, isNull);
        expect(request.format, isNull);
        expect(request.options, isNull);
        expect(request.system, isNull);
        expect(request.template, isNull);
        expect(request.stream, isNull);
        expect(request.raw, isNull);
        expect(request.keepAlive, isNull);
        expect(request.context, isNull);
      });

      test('Then it should parse all fields correctly', () {
        final json = generateGenerateRequestJson(withAllFields: true);
        final request = GenerateRequest.fromJson(json);

        expect(request.model, equals(json['model']));
        expect(request.prompt, equals(json['prompt']));
        expect(request.suffix, equals(json['suffix']));
        expect(request.images, equals(json['images']));
        expect(request.format, equals(json['format']));
        expect(request.options?.toJson(), equals(json['options']));
        expect(request.system, equals(json['system']));
        expect(request.template, equals(json['template']));
        expect(request.stream, equals(json['stream']));
        expect(request.raw, equals(json['raw']));
        expect(request.keepAlive, equals(json['keep_alive']));
        expect(request.context, equals(json['context']));
      });
    });

    group('When converting GenerateRequest to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final request = generateGenerateRequest();
        final json = request.toJson();

        expect(json['model'], equals(request.model));
        expect(json['prompt'], equals(request.prompt));
        expect(json.containsKey('suffix'), isFalse);
        expect(json.containsKey('images'), isFalse);
        expect(json.containsKey('format'), isFalse);
        expect(json.containsKey('options'), isFalse);
        expect(json.containsKey('system'), isFalse);
        expect(json.containsKey('template'), isFalse);
        expect(json.containsKey('stream'), isFalse);
        expect(json.containsKey('raw'), isFalse);
        expect(json.containsKey('keep_alive'), isFalse);
        expect(json.containsKey('context'), isFalse);
      });

      test('Then it should serialize all fields correctly', () {
        final request = generateGenerateRequest(withAllFields: true);
        final json = request.toJson();

        expect(json['model'], equals(request.model));
        expect(json['prompt'], equals(request.prompt));
        expect(json['suffix'], equals(request.suffix));
        expect(json['images'], equals(request.images));
        expect(json['format'], equals(request.format));
        expect(json['options'], equals(request.options?.toJson()));
        expect(json['system'], equals(request.system));
        expect(json['template'], equals(request.template));
        expect(json['stream'], equals(request.stream));
        expect(json['raw'], equals(request.raw));
        expect(json['keep_alive'], equals(request.keepAlive));
        expect(json['context'], equals(request.context));
      });
    });

    group('When comparing GenerateRequest instances', () {
      test('Then identical instances should be equal', () {
        final request1 = generateGenerateRequest(withAllFields: true);
        final request2 = GenerateRequest(
          model: request1.model,
          prompt: request1.prompt,
          suffix: request1.suffix,
          images: request1.images,
          format: request1.format,
          options: request1.options,
          system: request1.system,
          template: request1.template,
          stream: request1.stream,
          raw: request1.raw,
          keepAlive: request1.keepAlive,
          context: request1.context,
        );

        expect(request1, equals(request2));
      });

      test('Then instances with different values should not be equal', () {
        final request1 = generateGenerateRequest(withAllFields: true);
        final request2 = generateGenerateRequest(withAllFields: true);

        expect(request1, isNot(equals(request2)));
      });
    });
  });
}
