// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'st2data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ST2DataImpl _$$ST2DataImplFromJson(Map<String, dynamic> json) =>
    _$ST2DataImpl(
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      personality: json['personality'] as String? ?? '',
      scenario: json['scenario'] as String? ?? '',
      firstMes: json['first_mes'] as String? ?? '',
      mesExample: json['mes_example'] as String? ?? '',
      creatorNotes: json['creator_notes'] as String? ?? '',
      systemPrompt: json['system_prompt'] as String? ?? '',
      postHistoryInstructions:
          json['post_history_instructions'] as String? ?? '',
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      creator: json['creator'] as String? ?? '',
      characterVersion: json['character_version'] as String? ?? '',
      alternateGreetings: json['alternate_greetings'] == null
          ? const []
          : const AlternateGreetingsConverter()
              .fromJson(json['alternate_greetings'] as Object),
      extensions: json['extensions'] == null
          ? const ST2Extensions()
          : const ST2ExtensionsConverter()
              .fromJson(json['extensions'] as Map<String, dynamic>),
      characterBook:
          _$JsonConverterFromJson<Map<String, dynamic>, ST2CharacterBook>(
              json['character_book'],
              const ST2CharacterBookConverter().fromJson),
    );

Map<String, dynamic> _$$ST2DataImplToJson(_$ST2DataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'personality': instance.personality,
      'scenario': instance.scenario,
      'first_mes': instance.firstMes,
      'mes_example': instance.mesExample,
      'creator_notes': instance.creatorNotes,
      'system_prompt': instance.systemPrompt,
      'post_history_instructions': instance.postHistoryInstructions,
      'tags': instance.tags,
      'creator': instance.creator,
      'character_version': instance.characterVersion,
      'alternate_greetings': const AlternateGreetingsConverter()
          .toJson(instance.alternateGreetings),
      'extensions': const ST2ExtensionsConverter().toJson(instance.extensions),
      'character_book':
          _$JsonConverterToJson<Map<String, dynamic>, ST2CharacterBook>(
              instance.characterBook, const ST2CharacterBookConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
