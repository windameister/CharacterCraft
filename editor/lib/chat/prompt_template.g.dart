// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prompt_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromptTemplateImpl _$$PromptTemplateImplFromJson(Map<String, dynamic> json) =>
    _$PromptTemplateImpl(
      mainPrompt: json['mainPrompt'] as String,
      nsfwPrompt: json['nsfwPrompt'] as String,
      jailBreak: json['jailBreak'] as String,
    );

Map<String, dynamic> _$$PromptTemplateImplToJson(
        _$PromptTemplateImpl instance) =>
    <String, dynamic>{
      'mainPrompt': instance.mainPrompt,
      'nsfwPrompt': instance.nsfwPrompt,
      'jailBreak': instance.jailBreak,
    };
