// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditorSettingsImpl _$$EditorSettingsImplFromJson(Map<String, dynamic> json) =>
    _$EditorSettingsImpl(
      workingDirectory: json['workingDirectory'] as String,
      author: json['author'] as String? ?? '',
      copilotOptions: CopilotOptions.fromJson(
          json['copilotOptions'] as Map<String, dynamic>),
      openAIOptions:
          OpenAIOptions.fromJson(json['openAIOptions'] as Map<String, dynamic>),
      promptTemplate: PromptTemplate.fromJson(
          json['promptTemplate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EditorSettingsImplToJson(
        _$EditorSettingsImpl instance) =>
    <String, dynamic>{
      'workingDirectory': instance.workingDirectory,
      'author': instance.author,
      'copilotOptions': instance.copilotOptions,
      'openAIOptions': instance.openAIOptions,
      'promptTemplate': instance.promptTemplate,
    };
