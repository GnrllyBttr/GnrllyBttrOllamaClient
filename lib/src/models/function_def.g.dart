// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FunctionDefImpl _$$FunctionDefImplFromJson(Map<String, dynamic> json) =>
    _$FunctionDefImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      parameters: json['parameters'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$FunctionDefImplToJson(_$FunctionDefImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'parameters': instance.parameters,
    };
