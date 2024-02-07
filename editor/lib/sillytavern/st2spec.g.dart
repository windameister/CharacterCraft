// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'st2spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ST2SpecImpl _$$ST2SpecImplFromJson(Map<String, dynamic> json) =>
    _$ST2SpecImpl(
      spec: json['spec'] as String? ?? 'chara_card_v2',
      specVersion: json['spec_version'] as String? ?? '2.0',
      data: const ST2DataConverter()
          .fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ST2SpecImplToJson(_$ST2SpecImpl instance) =>
    <String, dynamic>{
      'spec': instance.spec,
      'spec_version': instance.specVersion,
      'data': const ST2DataConverter().toJson(instance.data),
    };
