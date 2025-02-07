// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatResponseImpl _$$ChatResponseImplFromJson(Map<String, dynamic> json) =>
    _$ChatResponseImpl(
      model: json['model'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      message: ChatMessage.fromJson(json['message'] as Map<String, dynamic>),
      done: json['done'] as bool,
      totalDuration: (json['total_duration'] as num?)?.toInt(),
      loadDuration: (json['load_duration'] as num?)?.toInt(),
      promptEvalCount: (json['prompt_eval_count'] as num?)?.toInt(),
      promptEvalDuration: (json['prompt_eval_duration'] as num?)?.toInt(),
      evalCount: (json['eval_count'] as num?)?.toInt(),
      evalDuration: (json['eval_duration'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ChatResponseImplToJson(_$ChatResponseImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'created_at': instance.createdAt.toIso8601String(),
      'message': instance.message.toJson(),
      'done': instance.done,
      if (instance.totalDuration case final value?) 'total_duration': value,
      if (instance.loadDuration case final value?) 'load_duration': value,
      if (instance.promptEvalCount case final value?)
        'prompt_eval_count': value,
      if (instance.promptEvalDuration case final value?)
        'prompt_eval_duration': value,
      if (instance.evalCount case final value?) 'eval_count': value,
      if (instance.evalDuration case final value?) 'eval_duration': value,
    };
