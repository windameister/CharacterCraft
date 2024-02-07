import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:editor/sillytavern/st2format.dart';
import 'package:uuid/uuid.dart';

part 'st2characterbook_model.freezed.dart';

@freezed
class ST2CharacterBookEntryModel with _$ST2CharacterBookEntryModel {
  const ST2CharacterBookEntryModel._();

  const factory ST2CharacterBookEntryModel({
    required String id,
    required String name,
    required String comment,
    required bool caseSensitive,
    required bool enabled,
    required String keys, // comma separated list of keys
    required String secondaryKeys, // comma separated list of secondary keys
    required String content,
    @Default(0) int selectiveLogic,
  }) = _ST2CharacterBookEntryModel;

  factory ST2CharacterBookEntryModel.empty() => ST2CharacterBookEntryModel(
      id: const Uuid().v4(),
      name: '',
      comment: '',
      caseSensitive: false,
      enabled: true,
      keys: '',
      secondaryKeys: '',
      content: '',
      selectiveLogic: 0);

  factory ST2CharacterBookEntryModel.fromSpec(ST2CharacterBookEntry data) {
    return ST2CharacterBookEntryModel(
      id: const Uuid().v4(),
      name: data.name,
      comment: data.comment,
      caseSensitive: data.caseSensitive,
      enabled: data.enabled,
      keys: data.keys.join(','),
      secondaryKeys: data.secondaryKeys.join(','),
      content: data.content,
      selectiveLogic: data.selectiveLogic,
    );
  }

  ST2CharacterBookEntry toST2CharacterBookEntry() {
    return ST2CharacterBookEntry(
      name: name,
      comment: comment,
      caseSensitive: caseSensitive,
      enabled: enabled,
      keys: keys.split(',').map((e) => e.trim()).toList(),
      secondaryKeys: secondaryKeys.split(',').map((e) => e.trim()).toList(),
      content: content,
      selectiveLogic: selectiveLogic,
    );
  }

  static Map<int, String> selectiveLogicOptions = ST2CharacterBookEntry.selectiveLogicValue2NameMap;

  String get selectiveLogicName {
    return ST2CharacterBookEntry.selectiveLogicValue2NameMap[selectiveLogic] ?? '';
  }

  String get titleString {
    return "$keys $selectiveLogicName $secondaryKeys";
  }
}

@freezed
class ST2CharacterBookModel with _$ST2CharacterBookModel {
  const ST2CharacterBookModel._();

  const factory ST2CharacterBookModel({
    required String description,
    required String name,
    @Default(false) bool recursiveScanning,
    @Default(50) int scanDepth,
    @Default(500) int tokenBudget,
    required BuiltList<ST2CharacterBookEntryModel> entries,
  }) = _ST2CharacterBookModel;

  factory ST2CharacterBookModel.empty() => ST2CharacterBookModel(
      description: '',
      name: '',
      recursiveScanning: false,
      scanDepth: 50,
      tokenBudget: 500,
      entries: BuiltList<ST2CharacterBookEntryModel>.from([]));

  factory ST2CharacterBookModel.fromSpec(ST2CharacterBook data) {
    return ST2CharacterBookModel(
      description: data.description,
      name: data.name,
      recursiveScanning: data.recursiveScanning,
      scanDepth: data.scanDepth,
      tokenBudget: data.tokenBudget,
      entries: BuiltList<ST2CharacterBookEntryModel>.from(
          data.entries.map((e) => ST2CharacterBookEntryModel.fromSpec(e))),
    );
  }

  bool get isEmpty {
    return this == ST2CharacterBookModel.empty();
  }

  ST2CharacterBook? toST2CharacterBook() {
    if (isEmpty) {
      return null;
    }

    return ST2CharacterBook(
      description: description,
      name: name,
      recursiveScanning: recursiveScanning,
      scanDepth: scanDepth,
      tokenBudget: tokenBudget,
      entries: entries.map((e) => e.toST2CharacterBookEntry()).toList(),
    );
  }
}
