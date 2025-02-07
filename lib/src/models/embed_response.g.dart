// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'embed_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmbedResponseImpl _$$EmbedResponseImplFromJson(Map<String, dynamic> json) =>
    _$EmbedResponseImpl(
      model: json['model'] as String,
      embeddings: (json['embeddings'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      totalDuration: (json['total_duration'] as num?)?.toInt(),
      loadDuration: (json['load_duration'] as num?)?.toInt(),
      promptEvalCount: (json['prompt_eval_count'] as num?)?.toInt(),
      promptEvalDuration: (json['prompt_eval_duration'] as num?)?.toInt(),
      evalCount: (json['eval_count'] as num?)?.toInt(),
      evalDuration: (json['eval_duration'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EmbedResponseImplToJson(_$EmbedResponseImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'embeddings': instance.embeddings,
      if (instance.totalDuration case final value?) 'total_duration': value,
      if (instance.loadDuration case final value?) 'load_duration': value,
      if (instance.promptEvalCount case final value?)
        'prompt_eval_count': value,
      if (instance.promptEvalDuration case final value?)
        'prompt_eval_duration': value,
      if (instance.evalCount case final value?) 'eval_count': value,
      if (instance.evalDuration case final value?) 'eval_duration': value,
    };
