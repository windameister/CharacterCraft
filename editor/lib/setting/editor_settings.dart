import 'package:editor/chat/prompt_template.dart';
import 'package:editor/editor/copilot_options.dart';
import 'package:editor/editor/openai_options.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'editor_settings.freezed.dart';
part 'editor_settings.g.dart';

@freezed
class EditorSettings with _$EditorSettings {
  const EditorSettings._();

  const factory EditorSettings({
    required String workingDirectory,
    @Default('') String author,
    required CopilotOptions copilotOptions,
    required OpenAIOptions openAIOptions,
    required PromptTemplate promptTemplate,
  }) = _EditorSettings;

  factory EditorSettings.empty() => EditorSettings(
        workingDirectory: "",
        author: "",
        copilotOptions: CopilotOptions.empty(),
        openAIOptions: const OpenAIOptions(),
        promptTemplate: PromptTemplate.basic(),
      );

  factory EditorSettings.fromJson(Map<String, dynamic> json) => _$EditorSettingsFromJson(json);
}
