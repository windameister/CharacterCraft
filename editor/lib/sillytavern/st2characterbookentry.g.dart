// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'st2characterbookentry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ST2CharacterBookEntryImpl _$$ST2CharacterBookEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$ST2CharacterBookEntryImpl(
      caseSensitive: json['case_sensitive'] as bool? ?? false,
      comment: json['comment'] as String? ?? '',
      constant: json['constant'] as bool? ?? false,
      content: json['content'] as String? ?? '',
      enabled: json['enabled'] as bool? ?? true,
      insertionOrder: json['insertion_order'] as int? ?? 100,
      keys:
          (json['keys'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      name: json['name'] as String? ?? '',
      position: json['position'] as String? ?? '0',
      priority: json['priority'] as int? ?? 100,
      secondaryKeys: (json['secondary_keys'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      selective: json['selective'] as bool? ?? false,
      selectiveLogic: json['selectiveLogic'] as int? ?? 0,
    );

Map<String, dynamic> _$$ST2CharacterBookEntryImplToJson(
        _$ST2CharacterBookEntryImpl instance) =>
    <String, dynamic>{
      'case_sensitive': instance.caseSensitive,
      'comment': instance.comment,
      'constant': instance.constant,
      'content': instance.content,
      'enabled': instance.enabled,
      'insertion_order': instance.insertionOrder,
      'keys': instance.keys,
      'name': instance.name,
      'position': instance.position,
      'priority': instance.priority,
      'secondary_keys': instance.secondaryKeys,
      'selective': instance.selective,
      'selectiveLogic': instance.selectiveLogic,
    };
