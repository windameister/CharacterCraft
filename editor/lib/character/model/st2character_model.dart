import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:editor/sillytavern/st2format.dart';

part 'st2character_model.freezed.dart';

@freezed
class GreetingMes with _$GreetingMes {
  const GreetingMes._();

  const factory GreetingMes({
    required String id,
    required String mes,
  }) = _GreetingMes;

  bool get isEmpty => mes.isEmpty;

  factory GreetingMes.fromMes(String mes) => GreetingMes(id: const Uuid().v4(), mes: mes);
  factory GreetingMes.empty() => GreetingMes(id: const Uuid().v4(), mes: '');
}

@freezed
class ST2CharacterModel with _$ST2CharacterModel {
  const ST2CharacterModel._();

  const factory ST2CharacterModel({
    @Default('') String name,
    @Default('') String description,
    @Default('') String personality,
    @Default('') String scenario,
    required BuiltList<GreetingMes> greetingMes,
    @Default('') String mesExample,
    @Default('') String creatorNotes,
    @Default('') String systemPrompt,
    @Default('') String postHistoryInstructions,
    required BuiltList<String> tags,
  }) = _ST2CharacterModel;

  // an empty character model should have at least one empty greeting mes
  factory ST2CharacterModel.empty() =>
      ST2CharacterModel(greetingMes: BuiltList.of([GreetingMes.empty()]), tags: BuiltList());

  factory ST2CharacterModel.fromSpec({required ST2Data data}) => ST2CharacterModel(
        name: data.name,
        description: data.description,
        personality: data.personality,
        scenario: data.scenario,
        greetingMes: BuiltList(
            [data.firstMes, ...data.alternateGreetings, ''].map((e) => GreetingMes.fromMes(e))),
        mesExample: data.mesExample,
        creatorNotes: data.creatorNotes,
        systemPrompt: data.systemPrompt,
        postHistoryInstructions: data.postHistoryInstructions,
        tags: BuiltList(data.tags),
      );
}
