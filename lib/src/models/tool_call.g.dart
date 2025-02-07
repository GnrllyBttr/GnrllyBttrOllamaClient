// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tool_call.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToolCallImpl _$$ToolCallImplFromJson(Map<String, dynamic> json) =>
    _$ToolCallImpl(
      function: FunctionCall.fromJson(json['function'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ToolCallImplToJson(_$ToolCallImpl instance) =>
    <String, dynamic>{
      'function': instance.function.toJson(),
    };
