import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:built_collection/built_collection.dart';
import './st2characterbookentry.dart';

part 'st2characterbook.freezed.dart';
part 'st2characterbook.g.dart';

class ST2CharacterBookEntryConverter
    implements JsonConverter<List<ST2CharacterBookEntry>, List<dynamic>> {
  const ST2CharacterBookEntryConverter();

  @override
  List<ST2CharacterBookEntry> fromJson(List<dynamic> json) {
    return json
        .map((dynamic item) => ST2CharacterBookEntry.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  @override
  List<dynamic> toJson(List<ST2CharacterBookEntry> object) {
    return object.map((item) => item.toJson()).toList();
  }
}

@freezed
class ST2CharacterBook with _$ST2CharacterBook {
  const ST2CharacterBook._();

  @JsonSerializable(explicitToJson: true)
  const factory ST2CharacterBook({
    @Default('') String description,
    @Default('') String name,
    @JsonKey(name: 'recursive_scanning') @Default(false) bool recursiveScanning,
    @JsonKey(name: 'scan_depth') @Default(50) int scanDepth,
    @JsonKey(name: 'token_budget') @Default(500) int tokenBudget,
    @Default([])
    @JsonKey(name: 'entries')
    @ST2CharacterBookEntryConverter()
    List<ST2CharacterBookEntry> entries,
  }) = _ST2CharacterBook;

  factory ST2CharacterBook.fromJson(Map<String, dynamic> json) => _$ST2CharacterBookFromJson(json);
}
