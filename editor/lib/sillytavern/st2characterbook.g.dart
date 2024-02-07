// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'st2characterbook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ST2CharacterBookImpl _$$ST2CharacterBookImplFromJson(
        Map<String, dynamic> json) =>
    _$ST2CharacterBookImpl(
      description: json['description'] as String? ?? '',
      name: json['name'] as String? ?? '',
      recursiveScanning: json['recursive_scanning'] as bool? ?? false,
      scanDepth: json['scan_depth'] as int? ?? 50,
      tokenBudget: json['token_budget'] as int? ?? 500,
      entries: json['entries'] == null
          ? const []
          : const ST2CharacterBookEntryConverter()
              .fromJson(json['entries'] as List),
    );

Map<String, dynamic> _$$ST2CharacterBookImplToJson(
        _$ST2CharacterBookImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'name': instance.name,
      'recursive_scanning': instance.recursiveScanning,
      'scan_depth': instance.scanDepth,
      'token_budget': instance.tokenBudget,
      'entries':
          const ST2CharacterBookEntryConverter().toJson(instance.entries),
    };
