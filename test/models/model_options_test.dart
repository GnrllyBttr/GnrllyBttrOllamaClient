// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/model_options.dart';

void main() {
  final faker = Faker();

  ModelOptions generateModelOptions({bool withAllFields = false}) {
    return ModelOptions(
      seed: withAllFields ? faker.randomGenerator.integer(100) : null,
      numKeep: withAllFields ? faker.randomGenerator.integer(100) : null,
      numPredict: withAllFields ? faker.randomGenerator.integer(100) : null,
      topK: withAllFields ? faker.randomGenerator.integer(100) : null,
      topP: withAllFields ? faker.randomGenerator.decimal() : null,
      minP: withAllFields ? faker.randomGenerator.decimal() : null,
      typicalP: withAllFields ? faker.randomGenerator.decimal() : null,
      repeatLastN: withAllFields ? faker.randomGenerator.integer(100) : null,
      temperature: withAllFields ? faker.randomGenerator.decimal() : null,
      repeatPenalty: withAllFields ? faker.randomGenerator.decimal() : null,
      presencePenalty: withAllFields ? faker.randomGenerator.decimal() : null,
      frequencyPenalty: withAllFields ? faker.randomGenerator.decimal() : null,
      mirostat: withAllFields ? faker.randomGenerator.integer(100) : null,
      mirostatTau: withAllFields ? faker.randomGenerator.decimal() : null,
      mirostatEta: withAllFields ? faker.randomGenerator.decimal() : null,
      penalizeNewline: withAllFields ? faker.randomGenerator.boolean() : null,
      stop: withAllFields ? [faker.lorem.word(), faker.lorem.word()] : null,
      numa: withAllFields ? faker.randomGenerator.boolean() : null,
      numCtx: withAllFields ? faker.randomGenerator.integer(100) : null,
      numBatch: withAllFields ? faker.randomGenerator.integer(100) : null,
      numGpu: withAllFields ? faker.randomGenerator.integer(100) : null,
      mainGpu: withAllFields ? faker.randomGenerator.integer(100) : null,
      lowVram: withAllFields ? faker.randomGenerator.boolean() : null,
      vocabOnly: withAllFields ? faker.randomGenerator.boolean() : null,
      useMmap: withAllFields ? faker.randomGenerator.boolean() : null,
      useMlock: withAllFields ? faker.randomGenerator.boolean() : null,
      numThread: withAllFields ? faker.randomGenerator.integer(100) : null,
    );
  }

  Map<String, dynamic> generateModelOptionsJson({bool withAllFields = false}) {
    final options = generateModelOptions(withAllFields: withAllFields);
    return <String, dynamic>{
      if (withAllFields) 'seed': options.seed,
      if (withAllFields) 'num_keep': options.numKeep,
      if (withAllFields) 'num_predict': options.numPredict,
      if (withAllFields) 'top_k': options.topK,
      if (withAllFields) 'top_p': options.topP,
      if (withAllFields) 'min_p': options.minP,
      if (withAllFields) 'typical_p': options.typicalP,
      if (withAllFields) 'repeat_last_n': options.repeatLastN,
      if (withAllFields) 'temperature': options.temperature,
      if (withAllFields) 'repeat_penalty': options.repeatPenalty,
      if (withAllFields) 'presence_penalty': options.presencePenalty,
      if (withAllFields) 'frequency_penalty': options.frequencyPenalty,
      if (withAllFields) 'mirostat': options.mirostat,
      if (withAllFields) 'mirostat_tau': options.mirostatTau,
      if (withAllFields) 'mirostat_eta': options.mirostatEta,
      if (withAllFields) 'penalize_newline': options.penalizeNewline,
      if (withAllFields) 'stop': options.stop,
      if (withAllFields) 'numa': options.numa,
      if (withAllFields) 'num_ctx': options.numCtx,
      if (withAllFields) 'num_batch': options.numBatch,
      if (withAllFields) 'num_gpu': options.numGpu,
      if (withAllFields) 'main_gpu': options.mainGpu,
      if (withAllFields) 'low_vram': options.lowVram,
      if (withAllFields) 'vocab_only': options.vocabOnly,
      if (withAllFields) 'use_mmap': options.useMmap,
      if (withAllFields) 'use_mlock': options.useMlock,
      if (withAllFields) 'num_thread': options.numThread,
    };
  }

  group('Given a ModelOptions instance', () {
    group('When creating a ModelOptions with required fields only', () {
      test('Then it should store the provided values correctly', () {
        final options = generateModelOptions();

        expect(options.seed, isNull);
        expect(options.numKeep, isNull);
        expect(options.numPredict, isNull);
        expect(options.topK, isNull);
        expect(options.topP, isNull);
        expect(options.minP, isNull);
        expect(options.typicalP, isNull);
        expect(options.repeatLastN, isNull);
        expect(options.temperature, isNull);
        expect(options.repeatPenalty, isNull);
        expect(options.presencePenalty, isNull);
        expect(options.frequencyPenalty, isNull);
        expect(options.mirostat, isNull);
        expect(options.mirostatTau, isNull);
        expect(options.mirostatEta, isNull);
        expect(options.penalizeNewline, isNull);
        expect(options.stop, isNull);
        expect(options.numa, isNull);
        expect(options.numCtx, isNull);
        expect(options.numBatch, isNull);
        expect(options.numGpu, isNull);
        expect(options.mainGpu, isNull);
        expect(options.lowVram, isNull);
        expect(options.vocabOnly, isNull);
        expect(options.useMmap, isNull);
        expect(options.useMlock, isNull);
        expect(options.numThread, isNull);
      });
    });

    group('When creating a ModelOptions with all fields', () {
      test('Then it should store all provided values correctly', () {
        final options = generateModelOptions(withAllFields: true);

        expect(options.seed, isNotNull);
        expect(options.numKeep, isNotNull);
        expect(options.numPredict, isNotNull);
        expect(options.topK, isNotNull);
        expect(options.topP, isNotNull);
        expect(options.minP, isNotNull);
        expect(options.typicalP, isNotNull);
        expect(options.repeatLastN, isNotNull);
        expect(options.temperature, isNotNull);
        expect(options.repeatPenalty, isNotNull);
        expect(options.presencePenalty, isNotNull);
        expect(options.frequencyPenalty, isNotNull);
        expect(options.mirostat, isNotNull);
        expect(options.mirostatTau, isNotNull);
        expect(options.mirostatEta, isNotNull);
        expect(options.penalizeNewline, isNotNull);
        expect(options.stop, isNotNull);
        expect(options.numa, isNotNull);
        expect(options.numCtx, isNotNull);
        expect(options.numBatch, isNotNull);
        expect(options.numGpu, isNotNull);
        expect(options.mainGpu, isNotNull);
        expect(options.lowVram, isNotNull);
        expect(options.vocabOnly, isNotNull);
        expect(options.useMmap, isNotNull);
        expect(options.useMlock, isNotNull);
        expect(options.numThread, isNotNull);
      });
    });

    group('When creating a ModelOptions from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = generateModelOptionsJson();
        final options = ModelOptions.fromJson(json);

        expect(options.seed, isNull);
        expect(options.numKeep, isNull);
        expect(options.numPredict, isNull);
        expect(options.topK, isNull);
        expect(options.topP, isNull);
        expect(options.minP, isNull);
        expect(options.typicalP, isNull);
        expect(options.repeatLastN, isNull);
        expect(options.temperature, isNull);
        expect(options.repeatPenalty, isNull);
        expect(options.presencePenalty, isNull);
        expect(options.frequencyPenalty, isNull);
        expect(options.mirostat, isNull);
        expect(options.mirostatTau, isNull);
        expect(options.mirostatEta, isNull);
        expect(options.penalizeNewline, isNull);
        expect(options.stop, isNull);
        expect(options.numa, isNull);
        expect(options.numCtx, isNull);
        expect(options.numBatch, isNull);
        expect(options.numGpu, isNull);
        expect(options.mainGpu, isNull);
        expect(options.lowVram, isNull);
        expect(options.vocabOnly, isNull);
        expect(options.useMmap, isNull);
        expect(options.useMlock, isNull);
        expect(options.numThread, isNull);
      });

      test('Then it should parse all fields correctly', () {
        final json = generateModelOptionsJson(withAllFields: true);
        final options = ModelOptions.fromJson(json);

        expect(options.seed, equals(json['seed']));
        expect(options.numKeep, equals(json['num_keep']));
        expect(options.numPredict, equals(json['num_predict']));
        expect(options.topK, equals(json['top_k']));
        expect(options.topP, equals(json['top_p']));
        expect(options.minP, equals(json['min_p']));
        expect(options.typicalP, equals(json['typical_p']));
        expect(options.repeatLastN, equals(json['repeat_last_n']));
        expect(options.temperature, equals(json['temperature']));
        expect(options.repeatPenalty, equals(json['repeat_penalty']));
        expect(options.presencePenalty, equals(json['presence_penalty']));
        expect(options.frequencyPenalty, equals(json['frequency_penalty']));
        expect(options.mirostat, equals(json['mirostat']));
        expect(options.mirostatTau, equals(json['mirostat_tau']));
        expect(options.mirostatEta, equals(json['mirostat_eta']));
        expect(options.penalizeNewline, equals(json['penalize_newline']));
        expect(options.stop, equals(json['stop']));
        expect(options.numa, equals(json['numa']));
        expect(options.numCtx, equals(json['num_ctx']));
        expect(options.numBatch, equals(json['num_batch']));
        expect(options.numGpu, equals(json['num_gpu']));
        expect(options.mainGpu, equals(json['main_gpu']));
        expect(options.lowVram, equals(json['low_vram']));
        expect(options.vocabOnly, equals(json['vocab_only']));
        expect(options.useMmap, equals(json['use_mmap']));
        expect(options.useMlock, equals(json['use_mlock']));
        expect(options.numThread, equals(json['num_thread']));
      });
    });

    group('When converting ModelOptions to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final options = generateModelOptions();
        final json = options.toJson();

        expect(json.containsKey('seed'), isFalse);
        expect(json.containsKey('num_keep'), isFalse);
        expect(json.containsKey('num_predict'), isFalse);
        expect(json.containsKey('top_k'), isFalse);
        expect(json.containsKey('top_p'), isFalse);
        expect(json.containsKey('min_p'), isFalse);
        expect(json.containsKey('typical_p'), isFalse);
        expect(json.containsKey('repeat_last_n'), isFalse);
        expect(json.containsKey('temperature'), isFalse);
        expect(json.containsKey('repeat_penalty'), isFalse);
        expect(json.containsKey('presence_penalty'), isFalse);
        expect(json.containsKey('frequency_penalty'), isFalse);
        expect(json.containsKey('mirostat'), isFalse);
        expect(json.containsKey('mirostat_tau'), isFalse);
        expect(json.containsKey('mirostat_eta'), isFalse);
        expect(json.containsKey('penalize_newline'), isFalse);
        expect(json.containsKey('stop'), isFalse);
        expect(json.containsKey('numa'), isFalse);
        expect(json.containsKey('num_ctx'), isFalse);
        expect(json.containsKey('num_batch'), isFalse);
        expect(json.containsKey('num_gpu'), isFalse);
        expect(json.containsKey('main_gpu'), isFalse);
        expect(json.containsKey('low_vram'), isFalse);
        expect(json.containsKey('vocab_only'), isFalse);
        expect(json.containsKey('use_mmap'), isFalse);
        expect(json.containsKey('use_mlock'), isFalse);
        expect(json.containsKey('num_thread'), isFalse);
      });

      test('Then it should serialize all fields correctly', () {
        final options = generateModelOptions(withAllFields: true);
        final json = options.toJson();

        expect(json['seed'], equals(options.seed));
        expect(json['num_keep'], equals(options.numKeep));
        expect(json['num_predict'], equals(options.numPredict));
        expect(json['top_k'], equals(options.topK));
        expect(json['top_p'], equals(options.topP));
        expect(json['min_p'], equals(options.minP));
        expect(json['typical_p'], equals(options.typicalP));
        expect(json['repeat_last_n'], equals(options.repeatLastN));
        expect(json['temperature'], equals(options.temperature));
        expect(json['repeat_penalty'], equals(options.repeatPenalty));
        expect(json['presence_penalty'], equals(options.presencePenalty));
        expect(json['frequency_penalty'], equals(options.frequencyPenalty));
        expect(json['mirostat'], equals(options.mirostat));
        expect(json['mirostat_tau'], equals(options.mirostatTau));
        expect(json['mirostat_eta'], equals(options.mirostatEta));
        expect(json['penalize_newline'], equals(options.penalizeNewline));
        expect(json['stop'], equals(options.stop));
        expect(json['numa'], equals(options.numa));
        expect(json['num_ctx'], equals(options.numCtx));
        expect(json['num_batch'], equals(options.numBatch));
        expect(json['num_gpu'], equals(options.numGpu));
        expect(json['main_gpu'], equals(options.mainGpu));
        expect(json['low_vram'], equals(options.lowVram));
        expect(json['vocab_only'], equals(options.vocabOnly));
        expect(json['use_mmap'], equals(options.useMmap));
        expect(json['use_mlock'], equals(options.useMlock));
        expect(json['num_thread'], equals(options.numThread));
      });
    });

    group('When comparing ModelOptions instances', () {
      test('Then identical instances should be equal', () {
        final options1 = generateModelOptions(withAllFields: true);
        final options2 = ModelOptions(
          seed: options1.seed,
          numKeep: options1.numKeep,
          numPredict: options1.numPredict,
          topK: options1.topK,
          topP: options1.topP,
          minP: options1.minP,
          typicalP: options1.typicalP,
          repeatLastN: options1.repeatLastN,
          temperature: options1.temperature,
          repeatPenalty: options1.repeatPenalty,
          presencePenalty: options1.presencePenalty,
          frequencyPenalty: options1.frequencyPenalty,
          mirostat: options1.mirostat,
          mirostatTau: options1.mirostatTau,
          mirostatEta: options1.mirostatEta,
          penalizeNewline: options1.penalizeNewline,
          stop: options1.stop,
          numa: options1.numa,
          numCtx: options1.numCtx,
          numBatch: options1.numBatch,
          numGpu: options1.numGpu,
          mainGpu: options1.mainGpu,
          lowVram: options1.lowVram,
          vocabOnly: options1.vocabOnly,
          useMmap: options1.useMmap,
          useMlock: options1.useMlock,
          numThread: options1.numThread,
        );

        expect(options1, equals(options2));
      });

      test('Then instances with different values should not be equal', () {
        final options1 = generateModelOptions(withAllFields: true);
        final options2 = generateModelOptions(withAllFields: true);

        expect(options1, isNot(equals(options2)));
      });
    });
  });
}
