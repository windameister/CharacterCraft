// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:built_collection/built_collection.dart';
import './st2characterbook.dart';
import './st2extensions.dart';

part 'st2data.freezed.dart';
part 'st2data.g.dart';

class ST2ExtensionsConverter implements JsonConverter<ST2Extensions, Map<String, dynamic>> {
  const ST2ExtensionsConverter();

  @override
  ST2Extensions fromJson(Map<String, dynamic> json) {
    return ST2Extensions.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(ST2Extensions extensions) => extensions.toJson();
}

class ST2CharacterBookConverter implements JsonConverter<ST2CharacterBook, Map<String, dynamic>> {
  const ST2CharacterBookConverter();

  @override
  ST2CharacterBook fromJson(Map<String, dynamic> json) {
    return ST2CharacterBook.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(ST2CharacterBook characters) => characters.toJson();
}

class AlternateGreetingsConverter implements JsonConverter<List<String>, Object> {
  const AlternateGreetingsConverter();

  @override
  List<String> fromJson(Object json) {
    if (json is List) {
      return List<String>.from(json);
    } else if (json is String) {
      return [json];
    } else {
      throw ArgumentError('Cannot convert $json to List<String>');
    }
  }

  @override
  Object toJson(List<String> alternateGreetings) => alternateGreetings;
}

@freezed
class ST2Data with _$ST2Data {
  const ST2Data._();

  const factory ST2Data({
    // Spec V2 fields
    @Default('') String name, // char name
    @Default('') String description, // char description
    @Default('') String personality, // char personality
    @Default('') String scenario, // char scenario
    @JsonKey(name: 'first_mes') @Default('') String firstMes, // char first_mes
    @JsonKey(name: 'mes_example') @Default('') String mesExample, // char mesExample

    // New V2 fields
    @JsonKey(name: 'creator_notes') @Default('') String creatorNotes, // creator notes
    @JsonKey(name: 'system_prompt') @Default('') String systemPrompt, // system prompt
    @JsonKey(name: 'post_history_instructions')
    @Default('')
    String postHistoryInstructions, // post history instructions

    @Default([]) List<String> tags,
    @Default('') String creator,
    @JsonKey(name: 'character_version') @Default('') String characterVersion,
    @AlternateGreetingsConverter()
    @Default([])
    @JsonKey(name: 'alternate_greetings')
    List<String> alternateGreetings,

    // ST extension fields
    @ST2ExtensionsConverter() @Default(ST2Extensions()) ST2Extensions extensions,
    @ST2CharacterBookConverter() @JsonKey(name: 'character_book') ST2CharacterBook? characterBook,

    // ST extension fields to V2 object
  }) = _ST2Data;

  factory ST2Data.fromJson(Map<String, dynamic> json) => _$ST2DataFromJson(json);

  List<String> get allGreetings {
    final greetings = <String>[];
    greetings.add(firstMes);
    greetings.addAll(alternateGreetings);
    return greetings;
  }
}
