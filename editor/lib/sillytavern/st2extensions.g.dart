// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'st2extensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ST2ExtensionsImpl _$$ST2ExtensionsImplFromJson(Map<String, dynamic> json) =>
    _$ST2ExtensionsImpl(
      talkativeness: json['talkativeness'] == null
          ? 0.5
          : const TalkativenessConverter().fromJson(json['talkativeness']),
      world: json['world'] as String? ?? '',
    );

Map<String, dynamic> _$$ST2ExtensionsImplToJson(_$ST2ExtensionsImpl instance) =>
    <String, dynamic>{
      'talkativeness':
          const TalkativenessConverter().toJson(instance.talkativeness),
      'world': instance.world,
    };
