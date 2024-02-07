import 'package:freezed_annotation/freezed_annotation.dart';

part 'copilot_options.freezed.dart';
part 'copilot_options.g.dart';

@freezed
class CopilotOptions with _$CopilotOptions {
  const CopilotOptions._();

  factory CopilotOptions({
    required bool copilotEnabled,
    required bool copilotUseCharacterContext,
    required String generalEditingPrompt,
    required String expandPrompt,
    required String revisePrompt,
    required String summaryPrompt,
  }) = _CopilotOptions;

  factory CopilotOptions.empty() => CopilotOptions(
        copilotEnabled: true,
        copilotUseCharacterContext: true,
        generalEditingPrompt:
            "Please edit the following text with {{instruction}}, generate the updated text directly with no comment.\nORIGINAL TEXT:\n ```{{original}}```",
        expandPrompt:
            "Please generate a expanded text based on the following text:\nORIGINAL TEXT:\n```{{original}}```",
        revisePrompt:
            "Generated an revised version of the provided ORIGINAL text, ensure that all key information is highlighted, clear and precise, and no room for misinterpretation:\nORIGINAL TEXT:\n```{{original}}```",
        summaryPrompt:
            "Please generate a summarized text based on the following text, be concise and precise:\nORIGINAL TEXT: ```{{original}}```",
      );

  factory CopilotOptions.fromJson(Map<String, dynamic> json) => _$CopilotOptionsFromJson(json);
}
