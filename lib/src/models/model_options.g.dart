// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelOptionsImpl _$$ModelOptionsImplFromJson(Map<String, dynamic> json) =>
    _$ModelOptionsImpl(
      seed: (json['seed'] as num?)?.toInt(),
      numKeep: (json['num_keep'] as num?)?.toInt(),
      numPredict: (json['num_predict'] as num?)?.toInt(),
      topK: (json['top_k'] as num?)?.toInt(),
      topP: (json['top_p'] as num?)?.toDouble(),
      minP: (json['min_p'] as num?)?.toDouble(),
      typicalP: (json['typical_p'] as num?)?.toDouble(),
      repeatLastN: (json['repeat_last_n'] as num?)?.toInt(),
      temperature: (json['temperature'] as num?)?.toDouble(),
      repeatPenalty: (json['repeat_penalty'] as num?)?.toDouble(),
      presencePenalty: (json['presence_penalty'] as num?)?.toDouble(),
      frequencyPenalty: (json['frequency_penalty'] as num?)?.toDouble(),
      mirostat: (json['mirostat'] as num?)?.toInt(),
      mirostatTau: (json['mirostat_tau'] as num?)?.toDouble(),
      mirostatEta: (json['mirostat_eta'] as num?)?.toDouble(),
      penalizeNewline: json['penalize_newline'] as bool?,
      stop: (json['stop'] as List<dynamic>?)?.map((e) => e as String).toList(),
      numa: json['numa'] as bool?,
      numCtx: (json['num_ctx'] as num?)?.toInt(),
      numBatch: (json['num_batch'] as num?)?.toInt(),
      numGpu: (json['num_gpu'] as num?)?.toInt(),
      mainGpu: (json['main_gpu'] as num?)?.toInt(),
      lowVram: json['low_vram'] as bool?,
      vocabOnly: json['vocab_only'] as bool?,
      useMmap: json['use_mmap'] as bool?,
      useMlock: json['use_mlock'] as bool?,
      numThread: (json['num_thread'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ModelOptionsImplToJson(_$ModelOptionsImpl instance) =>
    <String, dynamic>{
      if (instance.seed case final value?) 'seed': value,
      if (instance.numKeep case final value?) 'num_keep': value,
      if (instance.numPredict case final value?) 'num_predict': value,
      if (instance.topK case final value?) 'top_k': value,
      if (instance.topP case final value?) 'top_p': value,
      if (instance.minP case final value?) 'min_p': value,
      if (instance.typicalP case final value?) 'typical_p': value,
      if (instance.repeatLastN case final value?) 'repeat_last_n': value,
      if (instance.temperature case final value?) 'temperature': value,
      if (instance.repeatPenalty case final value?) 'repeat_penalty': value,
      if (instance.presencePenalty case final value?) 'presence_penalty': value,
      if (instance.frequencyPenalty case final value?)
        'frequency_penalty': value,
      if (instance.mirostat case final value?) 'mirostat': value,
      if (instance.mirostatTau case final value?) 'mirostat_tau': value,
      if (instance.mirostatEta case final value?) 'mirostat_eta': value,
      if (instance.penalizeNewline case final value?) 'penalize_newline': value,
      if (instance.stop case final value?) 'stop': value,
      if (instance.numa case final value?) 'numa': value,
      if (instance.numCtx case final value?) 'num_ctx': value,
      if (instance.numBatch case final value?) 'num_batch': value,
      if (instance.numGpu case final value?) 'num_gpu': value,
      if (instance.mainGpu case final value?) 'main_gpu': value,
      if (instance.lowVram case final value?) 'low_vram': value,
      if (instance.vocabOnly case final value?) 'vocab_only': value,
      if (instance.useMmap case final value?) 'use_mmap': value,
      if (instance.useMlock case final value?) 'use_mlock': value,
      if (instance.numThread case final value?) 'num_thread': value,
    };
