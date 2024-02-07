import 'package:freezed_annotation/freezed_annotation.dart';

part 'st2extensions.freezed.dart';
part 'st2extensions.g.dart';

class TalkativenessConverter implements JsonConverter<double, dynamic> {
  const TalkativenessConverter();

  @override
  double fromJson(dynamic json) {
    if (json is num) {
      return json.toDouble();
    } else if (json is String) {
      return double.tryParse(json) ?? 0.5;
    }
    return 0.5;
  }

  @override
  dynamic toJson(double talkativeness) => talkativeness;
}

@freezed
class ST2Extensions with _$ST2Extensions {
  const factory ST2Extensions({
    @TalkativenessConverter() @Default(0.5) double talkativeness,
    // required bool fav,
    @Default('') String world,
    // Spec extension: depth prompt
    // const depth_default = 4;
    // const depth_value = !isNaN(Number(data.depth_prompt_depth)) ? Number(data.depth_prompt_depth) : depth_default;
    // _.set(char, 'data.extensions.depth_prompt.prompt', data.depth_prompt_prompt ?? '');
    // _.set(char, 'data.extensions.depth_prompt.depth', depth_value);
  }) = _ST2Extensions;

  factory ST2Extensions.fromJson(Map<String, dynamic> json) => _$ST2ExtensionsFromJson(json);
}
