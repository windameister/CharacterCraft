import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_connection_option.freezed.dart';
part 'ai_connection_option.g.dart';

@Freezed(unionKey: "serviceType")
class AiConnectionOption with _$AiConnectionOption {
  const AiConnectionOption._();

  @FreezedUnionValue("none")
  const factory AiConnectionOption.none() = _None;

  @FreezedUnionValue("openAI")
  const factory AiConnectionOption.openAi({
    required String apiKey,
    String? organizationId,
    @Default("https://api.openai.com/v1") String baseUrl,
  }) = _OpenAi;

  factory AiConnectionOption.fromJson(Map<String, dynamic> json) =>
      _$AiConnectionOptionFromJson(json);

  bool get isNone => this is _None;
  bool get isSome => this is! _None;

  String? get apiKey => null;
  String? get organizationId => null;

  String chatUrl() => maybeMap(
        openAi: (o) => "${o.baseUrl}/chat/completions",
        orElse: () => throw UnsupportedError("chatUrl is not supported by this configuration"),
      );
}
