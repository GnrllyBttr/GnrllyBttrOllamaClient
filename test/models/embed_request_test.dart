// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  EmbedRequest generateEmbedRequest({bool withAllFields = false}) {
    return EmbedRequest(
      model: faker.lorem.word(),
      input: faker.lorem.sentence(),
      truncate: withAllFields ? faker.randomGenerator.boolean() : null,
      options: withAllFields
          ? ModelOptions(temperature: faker.randomGenerator.decimal())
          : null,
      keepAlive: withAllFields
          ? faker.randomGenerator
              .integer(
                100,
              )
              .toString()
          : null,
    );
  }

  Map<String, dynamic> generateEmbedRequestJson({bool withAllFields = false}) {
    final request = generateEmbedRequest(withAllFields: withAllFields);

    return <String, dynamic>{
      'model': request.model,
      'input': request.input,
      if (withAllFields) 'truncate': request.truncate,
      if (withAllFields) 'options': request.options?.toJson(),
      if (withAllFields) 'keep_alive': request.keepAlive,
    };
  }

  group('Given an EmbedRequest instance', () {
    group('When creating an EmbedRequest with required fields', () {
      test('Then it should store the provided values correctly', () {
        final request = generateEmbedRequest();

        expect(request.model, isNotEmpty);
        expect(request.input, isNotEmpty);
        expect(request.truncate, isNull);
        expect(request.options, isNull);
        expect(request.keepAlive, isNull);
      });
    });

    group('When creating an EmbedRequest with all fields', () {
      test('Then it should store all provided values correctly', () {
        final request = generateEmbedRequest(withAllFields: true);

        expect(request.model, isNotEmpty);
        expect(request.input, isNotEmpty);
        expect(request.truncate, isNotNull);
        expect(request.options, isNotNull);
        expect(request.keepAlive, isNotNull);
      });
    });

    group('When creating an EmbedRequest from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = generateEmbedRequestJson();
        final request = EmbedRequest.fromJson(json);

        expect(request.model, equals(json['model']));
        expect(request.input, equals(json['input']));
        expect(request.truncate, isNull);
        expect(request.options, isNull);
        expect(request.keepAlive, isNull);
      });

      test('Then it should parse all fields correctly', () {
        final json = generateEmbedRequestJson(withAllFields: true);
        final request = EmbedRequest.fromJson(json);

        expect(request.model, equals(json['model']));
        expect(request.input, equals(json['input']));
        expect(request.truncate, equals(json['truncate']));
        expect(request.options?.toJson(), equals(json['options']));
        expect(request.keepAlive, equals(json['keep_alive']));
      });
    });

    group('When converting EmbedRequest to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final request = generateEmbedRequest();
        final json = request.toJson();

        expect(json['model'], equals(request.model));
        expect(json['input'], equals(request.input));
        expect(json.containsKey('truncate'), isFalse);
        expect(json.containsKey('options'), isFalse);
        expect(json.containsKey('keep_alive'), isFalse);
      });

      test('Then it should serialize all fields correctly', () {
        final request = generateEmbedRequest(withAllFields: true);
        final json = request.toJson();

        expect(json['model'], equals(request.model));
        expect(json['input'], equals(request.input));
        expect(json['truncate'], equals(request.truncate));
        expect(json['options'], equals(request.options?.toJson()));
        expect(json['keep_alive'], equals(request.keepAlive));
      });
    });

    group('When comparing EmbedRequest instances', () {
      test('Then identical instances should be equal', () {
        final request1 = generateEmbedRequest(withAllFields: true);
        final request2 = EmbedRequest(
          model: request1.model,
          input: request1.input,
          truncate: request1.truncate,
          options: request1.options,
          keepAlive: request1.keepAlive,
        );

        expect(request1, equals(request2));
      });

      test('Then instances with different values should not be equal', () {
        final request1 = generateEmbedRequest(withAllFields: true);
        final request2 = generateEmbedRequest(withAllFields: true);

        expect(request1, isNot(equals(request2)));
      });
    });
  });
}
