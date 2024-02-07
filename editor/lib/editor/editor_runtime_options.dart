import 'package:editor/chat/prompt_template.dart';
import 'package:editor/editor/copilot_options.dart';
import 'package:editor/editor/openai_options.dart';
import 'package:editor/setting/ai_connection_option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'editor_runtime_options.freezed.dart';

@freezed
class EditorRuntimeOptions with _$EditorRuntimeOptions {
  const EditorRuntimeOptions._();

  const factory EditorRuntimeOptions({
    required String workingDirectory,
    required String author,
    required CopilotOptions copilotOptions,
    required AiConnectionOption aiConnectionOption,
    required OpenAIOptions openaiOptions,
    // chat prompt options (could be updated)
    required PromptTemplate promptTemplate,
  }) = _EditorRuntimeOptions;
}
