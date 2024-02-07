import 'package:freezed_annotation/freezed_annotation.dart';

part 'st2characterbookentry.freezed.dart';
part 'st2characterbookentry.g.dart';

@freezed
class ST2CharacterBookEntry with _$ST2CharacterBookEntry {
  const ST2CharacterBookEntry._();

  const factory ST2CharacterBookEntry({
    @Default(false) @JsonKey(name: 'case_sensitive') bool caseSensitive,
    @Default('') String comment,
    @Default(false) bool constant,
    @Default('') String content,
    @Default(true) bool enabled,
    @JsonKey(name: 'insertion_order') @Default(100) int insertionOrder,
    @Default([]) List<String> keys,
    @Default('') String name,
    @Default('0') String position,
    @Default(100) int priority,
    @JsonKey(name: 'secondary_keys') @Default([]) List<String> secondaryKeys,
    @Default(false) bool selective,
    @Default(0) int selectiveLogic,
  }) = _ST2CharacterBookEntry;

  static Map<int, String> selectiveLogicValue2NameMap = {0: "AND_ANY", 1: "NOT_ALL", 2: "NOT_ANY"};

  factory ST2CharacterBookEntry.fromJson(Map<String, dynamic> json) =>
      _$ST2CharacterBookEntryFromJson(json);
}
