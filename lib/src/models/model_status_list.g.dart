// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_status_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelStatusListImpl _$$ModelStatusListImplFromJson(
        Map<String, dynamic> json) =>
    _$ModelStatusListImpl(
      models: (json['models'] as List<dynamic>)
          .map((e) => ModelStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ModelStatusListImplToJson(
        _$ModelStatusListImpl instance) =>
    <String, dynamic>{
      'models': instance.models.map((e) => e.toJson()).toList(),
    };
