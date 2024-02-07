// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copilot_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CopilotOptionsImpl _$$CopilotOptionsImplFromJson(Map<String, dynamic> json) =>
    _$CopilotOptionsImpl(
      copilotEnabled: json['copilotEnabled'] as bool,
      copilotUseCharacterContext: json['copilotUseCharacterContext'] as bool,
      generalEditingPrompt: json['generalEditingPrompt'] as String,
      expandPrompt: json['expandPrompt'] as String,
      revisePrompt: json['revisePrompt'] as String,
      summaryPrompt: json['summaryPrompt'] as String,
    );

Map<String, dynamic> _$$CopilotOptionsImplToJson(
        _$CopilotOptionsImpl instance) =>
    <String, dynamic>{
      'copilotEnabled': instance.copilotEnabled,
      'copilotUseCharacterContext': instance.copilotUseCharacterContext,
      'generalEditingPrompt': instance.generalEditingPrompt,
      'expandPrompt': instance.expandPrompt,
      'revisePrompt': instance.revisePrompt,
      'summaryPrompt': instance.summaryPrompt,
    };
