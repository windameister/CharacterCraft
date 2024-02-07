import 'package:editor/character/model/st2character_model.dart';
import 'package:editor/character/model/st2characterbook_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:editor/sillytavern/st2format.dart';

part 'st2document_model.freezed.dart';

@freezed
class ST2DocumentModel with _$ST2DocumentModel {
  // Added constructor. Must not have any parameter
  const ST2DocumentModel._();

  const factory ST2DocumentModel({
    required String imageFile,
    required String author,
    required ST2CharacterModel character,
    required ST2CharacterBookModel characterBook,
  }) = _ST2DocumentModel;

  factory ST2DocumentModel.fromSpec({required ST2Spec spec, required String imageFile}) {
    return ST2DocumentModel(
      author: spec.data.creator,
      imageFile: imageFile,
      character: ST2CharacterModel.fromSpec(data: spec.data),
      characterBook: spec.data.characterBook != null
          ? ST2CharacterBookModel.fromSpec(spec.data.characterBook!)
          : ST2CharacterBookModel.empty(),
    );
  }

  factory ST2DocumentModel.empty({String author = ''}) {
    return ST2DocumentModel(
      author: author,
      imageFile: '',
      character: ST2CharacterModel.empty(),
      characterBook: ST2CharacterBookModel.empty(),
    );
  }

  String get firstMes {
    try {
      return character.greetingMes.first.mes;
    } catch (e) {
      return '';
    }
  }

  List<String> get alternateGreetings {
    try {
      return character.greetingMes
          .skip(1)
          .map((e) => e.mes)
          .where((mes) => mes.isNotEmpty)
          .toList();
    } catch (e) {
      return [];
    }
  }

  ST2Spec toST2Spec() {
    return ST2Spec.fromData(ST2Data(
      creator: author,
      name: character.name,
      description: character.description,
      personality: character.personality,
      scenario: character.scenario,
      firstMes: firstMes,
      alternateGreetings: alternateGreetings,
      mesExample: character.mesExample,
      creatorNotes: character.creatorNotes,
      systemPrompt: character.systemPrompt,
      postHistoryInstructions: character.postHistoryInstructions,
      tags: character.tags.toList(),
      characterBook: characterBook.toST2CharacterBook(),
    ));
  }
}
