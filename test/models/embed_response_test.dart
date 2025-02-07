// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  EmbedResponse generateEmbedResponse({bool withAllFields = false}) {
    return EmbedResponse(
      model: faker.lorem.word(),
      embeddings: <List<double>>[
        <double>[
          faker.randomGenerator.decimal(),
          faker.randomGenerator.decimal(),
        ],
        <double>[
          faker.randomGenerator.decimal(),
          faker.randomGenerator.decimal(),
        ],
      ],
      totalDuration: withAllFields ? faker.randomGenerator.integer(1000) : null,
      loadDuration: withAllFields ? faker.randomGenerator.integer(1000) : null,
      promptEvalCount: withAllFields
          ? faker.randomGenerator.integer(
              100,
            )
          : null,
      promptEvalDuration: withAllFields
          ? faker.randomGenerator.integer(
              1000,
            )
          : null,
      evalCount: withAllFields ? faker.randomGenerator.integer(100) : null,
      evalDuration: withAllFields ? faker.randomGenerator.integer(1000) : null,
    );
  }

  Map<String, dynamic> generateEmbedResponseJson({bool withAllFields = false}) {
    final response = generateEmbedResponse(withAllFields: withAllFields);

    return <String, dynamic>{
      'model': response.model,
      'embeddings': response.embeddings,
      if (withAllFields) 'total_duration': response.totalDuration,
      if (withAllFields) 'load_duration': response.loadDuration,
      if (withAllFields) 'prompt_eval_count': response.promptEvalCount,
      if (withAllFields) 'prompt_eval_duration': response.promptEvalDuration,
      if (withAllFields) 'eval_count': response.evalCount,
      if (withAllFields) 'eval_duration': response.evalDuration,
    };
  }

  group('Given an EmbedResponse instance', () {
    group('When creating an EmbedResponse with required fields', () {
      test('Then it should store the provided values correctly', () {
        final response = generateEmbedResponse();

        expect(response.model, isNotEmpty);
        expect(response.embeddings, isNotEmpty);
        expect(response.totalDuration, isNull);
        expect(response.loadDuration, isNull);
        expect(response.promptEvalCount, isNull);
        expect(response.promptEvalDuration, isNull);
        expect(response.evalCount, isNull);
        expect(response.evalDuration, isNull);
      });
    });

    group('When creating an EmbedResponse with all fields', () {
      test('Then it should store all provided values correctly', () {
        final response = generateEmbedResponse(withAllFields: true);

        expect(response.model, isNotEmpty);
        expect(response.embeddings, isNotEmpty);
        expect(response.totalDuration, isNotNull);
        expect(response.loadDuration, isNotNull);
        expect(response.promptEvalCount, isNotNull);
        expect(response.promptEvalDuration, isNotNull);
        expect(response.evalCount, isNotNull);
        expect(response.evalDuration, isNotNull);
      });
    });

    group('When creating an EmbedResponse from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = generateEmbedResponseJson();
        final response = EmbedResponse.fromJson(json);

        expect(response.model, equals(json['model']));
        expect(response.embeddings, equals(json['embeddings']));
        expect(response.totalDuration, isNull);
        expect(response.loadDuration, isNull);
        expect(response.promptEvalCount, isNull);
        expect(response.promptEvalDuration, isNull);
        expect(response.evalCount, isNull);
        expect(response.evalDuration, isNull);
      });

      test('Then it should parse all fields correctly', () {
        final json = generateEmbedResponseJson(withAllFields: true);
        final response = EmbedResponse.fromJson(json);

        expect(response.model, equals(json['model']));
        expect(response.embeddings, equals(json['embeddings']));
        expect(response.totalDuration, equals(json['total_duration']));
        expect(response.loadDuration, equals(json['load_duration']));
        expect(response.promptEvalCount, equals(json['prompt_eval_count']));
        expect(
          response.promptEvalDuration,
          equals(json['prompt_eval_duration']),
        );
        expect(response.evalCount, equals(json['eval_count']));
        expect(response.evalDuration, equals(json['eval_duration']));
      });
    });

    group('When converting EmbedResponse to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final response = generateEmbedResponse();
        final json = response.toJson();

        expect(json['model'], equals(response.model));
        expect(json['embeddings'], equals(response.embeddings));
        expect(json.containsKey('total_duration'), isFalse);
        expect(json.containsKey('load_duration'), isFalse);
        expect(json.containsKey('prompt_eval_count'), isFalse);
        expect(json.containsKey('prompt_eval_duration'), isFalse);
        expect(json.containsKey('eval_count'), isFalse);
        expect(json.containsKey('eval_duration'), isFalse);
      });

      test('Then it should serialize all fields correctly', () {
        final response = generateEmbedResponse(withAllFields: true);
        final json = response.toJson();

        expect(json['model'], equals(response.model));
        expect(json['embeddings'], equals(response.embeddings));
        expect(json['total_duration'], equals(response.totalDuration));
        expect(json['load_duration'], equals(response.loadDuration));
        expect(json['prompt_eval_count'], equals(response.promptEvalCount));
        expect(
          json['prompt_eval_duration'],
          equals(response.promptEvalDuration),
        );
        expect(json['eval_count'], equals(response.evalCount));
        expect(json['eval_duration'], equals(response.evalDuration));
      });
    });

    group('When comparing EmbedResponse instances', () {
      test('Then identical instances should be equal', () {
        final response1 = generateEmbedResponse(withAllFields: true);
        final response2 = EmbedResponse(
          model: response1.model,
          embeddings: response1.embeddings,
          totalDuration: response1.totalDuration,
          loadDuration: response1.loadDuration,
          promptEvalCount: response1.promptEvalCount,
          promptEvalDuration: response1.promptEvalDuration,
          evalCount: response1.evalCount,
          evalDuration: response1.evalDuration,
        );

        expect(response1, equals(response2));
      });

      test('Then instances with different values should not be equal', () {
        final response1 = generateEmbedResponse(withAllFields: true);
        final response2 = generateEmbedResponse(withAllFields: true);

        expect(response1, isNot(equals(response2)));
      });
    });
  });
}
