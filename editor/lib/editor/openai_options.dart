import 'package:freezed_annotation/freezed_annotation.dart';

part 'openai_options.freezed.dart';
part 'openai_options.g.dart';

@freezed
class OpenAIOptions with _$OpenAIOptions {
  const OpenAIOptions._();

  const factory OpenAIOptions({
    @Default('gpt-4-1106-preview') String model,
  }) = _OpenAIOptions;

  factory OpenAIOptions.fromJson(Map<String, dynamic> json) => _$OpenAIOptionsFromJson(json);
}

enum OpenAIModels {
  gpt4_1106Preview('gpt-4-1106-preview',
      desc: 'context: 128k, input:\$0.01/1K tokens, output:\$0.03 / 1K tokens'),
  gpt4('gpt-4', desc: 'context: 8192, input:\$0.03 / 1K tokens, output:\$0.06 / 1K tokens'),
  gpt3_5Turbo_16k('gpt-3.5-turbo-16k', desc: 'context: 16k'),
  gpt3_5Turbo_1106('gpt-3.5-turbo-1106',
      desc: 'context: 16k, input:\$0.0010 / 1K tokens, output:\$0.0020 / 1K tokens'),
  ;

  final String name;
  final String? desc;
  const OpenAIModels(this.name, {this.desc});
}
