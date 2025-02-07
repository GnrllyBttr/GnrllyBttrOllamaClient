// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  GenerateResponse generateGenerateResponse({bool withAllFields = false}) {
    return GenerateResponse(
      model: faker.lorem.word(),
      createdAt: DateTime.now(),
      response: faker.lorem.sentence(),
      done: faker.randomGenerator.boolean(),
      context: withAllFields
          ? <int>[
              faker.randomGenerator.integer(100),
              faker.randomGenerator.integer(100)
            ]
          : null,
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

  Map<String, dynamic> generateGenerateResponseJson({
    bool withAllFields = false,
  }) {
    final response = generateGenerateResponse(withAllFields: withAllFields);
    return <String, dynamic>{
      'model': response.model,
      'created_at': response.createdAt.toIso8601String(),
      'response': response.response,
      'done': response.done,
      if (withAllFields) 'context': response.context,
      if (withAllFields) 'total_duration': response.totalDuration,
      if (withAllFields) 'load_duration': response.loadDuration,
      if (withAllFields) 'prompt_eval_count': response.promptEvalCount,
      if (withAllFields) 'prompt_eval_duration': response.promptEvalDuration,
      if (withAllFields) 'eval_count': response.evalCount,
      if (withAllFields) 'eval_duration': response.evalDuration,
    };
  }

  group('Given a GenerateResponse instance', () {
    group('When creating a GenerateResponse with required fields', () {
      test('Then it should store the provided values correctly', () {
        final response = generateGenerateResponse();

        expect(response.model, isNotEmpty);
        expect(response.createdAt, isNotNull);
        expect(response.response, isNotEmpty);
        expect(response.done, isNotNull);
        expect(response.context, isNull);
        expect(response.totalDuration, isNull);
        expect(response.loadDuration, isNull);
        expect(response.promptEvalCount, isNull);
        expect(response.promptEvalDuration, isNull);
        expect(response.evalCount, isNull);
        expect(response.evalDuration, isNull);
      });
    });

    group('When creating a GenerateResponse with all fields', () {
      test('Then it should store all provided values correctly', () {
        final response = generateGenerateResponse(withAllFields: true);

        expect(response.model, isNotEmpty);
        expect(response.createdAt, isNotNull);
        expect(response.response, isNotEmpty);
        expect(response.done, isNotNull);
        expect(response.context, isNotNull);
        expect(response.totalDuration, isNotNull);
        expect(response.loadDuration, isNotNull);
        expect(response.promptEvalCount, isNotNull);
        expect(response.promptEvalDuration, isNotNull);
        expect(response.evalCount, isNotNull);
        expect(response.evalDuration, isNotNull);
      });
    });

    group('When creating a GenerateResponse from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = generateGenerateResponseJson();
        final response = GenerateResponse.fromJson(json);

        expect(response.model, equals(json['model']));
        expect(
          response.createdAt.toIso8601String(),
          equals(json['created_at']),
        );
        expect(response.response, equals(json['response']));
        expect(response.done, equals(json['done']));
        expect(response.context, isNull);
        expect(response.totalDuration, isNull);
        expect(response.loadDuration, isNull);
        expect(response.promptEvalCount, isNull);
        expect(response.promptEvalDuration, isNull);
        expect(response.evalCount, isNull);
        expect(response.evalDuration, isNull);
      });

      test('Then it should parse all fields correctly', () {
        final json = generateGenerateResponseJson(withAllFields: true);
        final response = GenerateResponse.fromJson(json);

        expect(response.model, equals(json['model']));
        expect(
          response.createdAt.toIso8601String(),
          equals(json['created_at']),
        );
        expect(response.response, equals(json['response']));
        expect(response.done, equals(json['done']));
        expect(response.context, equals(json['context']));
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

    group('When converting GenerateResponse to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final response = generateGenerateResponse();
        final json = response.toJson();

        expect(json['model'], equals(response.model));
        expect(
          json['created_at'],
          equals(response.createdAt.toIso8601String()),
        );
        expect(json['response'], equals(response.response));
        expect(json['done'], equals(response.done));
        expect(json.containsKey('context'), isFalse);
        expect(json.containsKey('total_duration'), isFalse);
        expect(json.containsKey('load_duration'), isFalse);
        expect(json.containsKey('prompt_eval_count'), isFalse);
        expect(json.containsKey('prompt_eval_duration'), isFalse);
        expect(json.containsKey('eval_count'), isFalse);
        expect(json.containsKey('eval_duration'), isFalse);
      });

      test('Then it should serialize all fields correctly', () {
        final response = generateGenerateResponse(withAllFields: true);
        final json = response.toJson();

        expect(json['model'], equals(response.model));
        expect(
          json['created_at'],
          equals(response.createdAt.toIso8601String()),
        );
        expect(json['response'], equals(response.response));
        expect(json['done'], equals(response.done));
        expect(json['context'], equals(response.context));
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

    group('When comparing GenerateResponse instances', () {
      test('Then identical instances should be equal', () {
        final response1 = generateGenerateResponse(withAllFields: true);
        final response2 = GenerateResponse(
          model: response1.model,
          createdAt: response1.createdAt,
          response: response1.response,
          done: response1.done,
          context: response1.context,
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
        final response1 = generateGenerateResponse(withAllFields: true);
        final response2 = generateGenerateResponse(withAllFields: true);

        expect(response1, isNot(equals(response2)));
      });
    });
  });
}
