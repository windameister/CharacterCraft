// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'st2data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ST2Data _$ST2DataFromJson(Map<String, dynamic> json) {
  return _ST2Data.fromJson(json);
}

/// @nodoc
mixin _$ST2Data {
// Spec V2 fields
  String get name => throw _privateConstructorUsedError; // char name
  String get description =>
      throw _privateConstructorUsedError; // char description
  String get personality =>
      throw _privateConstructorUsedError; // char personality
  String get scenario => throw _privateConstructorUsedError; // char scenario
  @JsonKey(name: 'first_mes')
  String get firstMes => throw _privateConstructorUsedError; // char first_mes
  @JsonKey(name: 'mes_example')
  String get mesExample =>
      throw _privateConstructorUsedError; // char mesExample
// New V2 fields
  @JsonKey(name: 'creator_notes')
  String get creatorNotes =>
      throw _privateConstructorUsedError; // creator notes
  @JsonKey(name: 'system_prompt')
  String get systemPrompt =>
      throw _privateConstructorUsedError; // system prompt
  @JsonKey(name: 'post_history_instructions')
  String get postHistoryInstructions =>
      throw _privateConstructorUsedError; // post history instructions
  List<String> get tags => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  @JsonKey(name: 'character_version')
  String get characterVersion => throw _privateConstructorUsedError;
  @AlternateGreetingsConverter()
  @JsonKey(name: 'alternate_greetings')
  List<String> get alternateGreetings =>
      throw _privateConstructorUsedError; // ST extension fields
  @ST2ExtensionsConverter()
  ST2Extensions get extensions => throw _privateConstructorUsedError;
  @ST2CharacterBookConverter()
  @JsonKey(name: 'character_book')
  ST2CharacterBook? get characterBook => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ST2DataCopyWith<ST2Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ST2DataCopyWith<$Res> {
  factory $ST2DataCopyWith(ST2Data value, $Res Function(ST2Data) then) =
      _$ST2DataCopyWithImpl<$Res, ST2Data>;
  @useResult
  $Res call(
      {String name,
      String description,
      String personality,
      String scenario,
      @JsonKey(name: 'first_mes') String firstMes,
      @JsonKey(name: 'mes_example') String mesExample,
      @JsonKey(name: 'creator_notes') String creatorNotes,
      @JsonKey(name: 'system_prompt') String systemPrompt,
      @JsonKey(name: 'post_history_instructions')
      String postHistoryInstructions,
      List<String> tags,
      String creator,
      @JsonKey(name: 'character_version') String characterVersion,
      @AlternateGreetingsConverter()
      @JsonKey(name: 'alternate_greetings')
      List<String> alternateGreetings,
      @ST2ExtensionsConverter() ST2Extensions extensions,
      @ST2CharacterBookConverter()
      @JsonKey(name: 'character_book')
      ST2CharacterBook? characterBook});

  $ST2ExtensionsCopyWith<$Res> get extensions;
  $ST2CharacterBookCopyWith<$Res>? get characterBook;
}

/// @nodoc
class _$ST2DataCopyWithImpl<$Res, $Val extends ST2Data>
    implements $ST2DataCopyWith<$Res> {
  _$ST2DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? personality = null,
    Object? scenario = null,
    Object? firstMes = null,
    Object? mesExample = null,
    Object? creatorNotes = null,
    Object? systemPrompt = null,
    Object? postHistoryInstructions = null,
    Object? tags = null,
    Object? creator = null,
    Object? characterVersion = null,
    Object? alternateGreetings = null,
    Object? extensions = null,
    Object? characterBook = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      personality: null == personality
          ? _value.personality
          : personality // ignore: cast_nullable_to_non_nullable
              as String,
      scenario: null == scenario
          ? _value.scenario
          : scenario // ignore: cast_nullable_to_non_nullable
              as String,
      firstMes: null == firstMes
          ? _value.firstMes
          : firstMes // ignore: cast_nullable_to_non_nullable
              as String,
      mesExample: null == mesExample
          ? _value.mesExample
          : mesExample // ignore: cast_nullable_to_non_nullable
              as String,
      creatorNotes: null == creatorNotes
          ? _value.creatorNotes
          : creatorNotes // ignore: cast_nullable_to_non_nullable
              as String,
      systemPrompt: null == systemPrompt
          ? _value.systemPrompt
          : systemPrompt // ignore: cast_nullable_to_non_nullable
              as String,
      postHistoryInstructions: null == postHistoryInstructions
          ? _value.postHistoryInstructions
          : postHistoryInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      characterVersion: null == characterVersion
          ? _value.characterVersion
          : characterVersion // ignore: cast_nullable_to_non_nullable
              as String,
      alternateGreetings: null == alternateGreetings
          ? _value.alternateGreetings
          : alternateGreetings // ignore: cast_nullable_to_non_nullable
              as List<String>,
      extensions: null == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as ST2Extensions,
      characterBook: freezed == characterBook
          ? _value.characterBook
          : characterBook // ignore: cast_nullable_to_non_nullable
              as ST2CharacterBook?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ST2ExtensionsCopyWith<$Res> get extensions {
    return $ST2ExtensionsCopyWith<$Res>(_value.extensions, (value) {
      return _then(_value.copyWith(extensions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ST2CharacterBookCopyWith<$Res>? get characterBook {
    if (_value.characterBook == null) {
      return null;
    }

    return $ST2CharacterBookCopyWith<$Res>(_value.characterBook!, (value) {
      return _then(_value.copyWith(characterBook: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ST2DataImplCopyWith<$Res> implements $ST2DataCopyWith<$Res> {
  factory _$$ST2DataImplCopyWith(
          _$ST2DataImpl value, $Res Function(_$ST2DataImpl) then) =
      __$$ST2DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String personality,
      String scenario,
      @JsonKey(name: 'first_mes') String firstMes,
      @JsonKey(name: 'mes_example') String mesExample,
      @JsonKey(name: 'creator_notes') String creatorNotes,
      @JsonKey(name: 'system_prompt') String systemPrompt,
      @JsonKey(name: 'post_history_instructions')
      String postHistoryInstructions,
      List<String> tags,
      String creator,
      @JsonKey(name: 'character_version') String characterVersion,
      @AlternateGreetingsConverter()
      @JsonKey(name: 'alternate_greetings')
      List<String> alternateGreetings,
      @ST2ExtensionsConverter() ST2Extensions extensions,
      @ST2CharacterBookConverter()
      @JsonKey(name: 'character_book')
      ST2CharacterBook? characterBook});

  @override
  $ST2ExtensionsCopyWith<$Res> get extensions;
  @override
  $ST2CharacterBookCopyWith<$Res>? get characterBook;
}

/// @nodoc
class __$$ST2DataImplCopyWithImpl<$Res>
    extends _$ST2DataCopyWithImpl<$Res, _$ST2DataImpl>
    implements _$$ST2DataImplCopyWith<$Res> {
  __$$ST2DataImplCopyWithImpl(
      _$ST2DataImpl _value, $Res Function(_$ST2DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? personality = null,
    Object? scenario = null,
    Object? firstMes = null,
    Object? mesExample = null,
    Object? creatorNotes = null,
    Object? systemPrompt = null,
    Object? postHistoryInstructions = null,
    Object? tags = null,
    Object? creator = null,
    Object? characterVersion = null,
    Object? alternateGreetings = null,
    Object? extensions = null,
    Object? characterBook = freezed,
  }) {
    return _then(_$ST2DataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      personality: null == personality
          ? _value.personality
          : personality // ignore: cast_nullable_to_non_nullable
              as String,
      scenario: null == scenario
          ? _value.scenario
          : scenario // ignore: cast_nullable_to_non_nullable
              as String,
      firstMes: null == firstMes
          ? _value.firstMes
          : firstMes // ignore: cast_nullable_to_non_nullable
              as String,
      mesExample: null == mesExample
          ? _value.mesExample
          : mesExample // ignore: cast_nullable_to_non_nullable
              as String,
      creatorNotes: null == creatorNotes
          ? _value.creatorNotes
          : creatorNotes // ignore: cast_nullable_to_non_nullable
              as String,
      systemPrompt: null == systemPrompt
          ? _value.systemPrompt
          : systemPrompt // ignore: cast_nullable_to_non_nullable
              as String,
      postHistoryInstructions: null == postHistoryInstructions
          ? _value.postHistoryInstructions
          : postHistoryInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      characterVersion: null == characterVersion
          ? _value.characterVersion
          : characterVersion // ignore: cast_nullable_to_non_nullable
              as String,
      alternateGreetings: null == alternateGreetings
          ? _value._alternateGreetings
          : alternateGreetings // ignore: cast_nullable_to_non_nullable
              as List<String>,
      extensions: null == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as ST2Extensions,
      characterBook: freezed == characterBook
          ? _value.characterBook
          : characterBook // ignore: cast_nullable_to_non_nullable
              as ST2CharacterBook?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ST2DataImpl extends _ST2Data {
  const _$ST2DataImpl(
      {this.name = '',
      this.description = '',
      this.personality = '',
      this.scenario = '',
      @JsonKey(name: 'first_mes') this.firstMes = '',
      @JsonKey(name: 'mes_example') this.mesExample = '',
      @JsonKey(name: 'creator_notes') this.creatorNotes = '',
      @JsonKey(name: 'system_prompt') this.systemPrompt = '',
      @JsonKey(name: 'post_history_instructions')
      this.postHistoryInstructions = '',
      final List<String> tags = const [],
      this.creator = '',
      @JsonKey(name: 'character_version') this.characterVersion = '',
      @AlternateGreetingsConverter()
      @JsonKey(name: 'alternate_greetings')
      final List<String> alternateGreetings = const [],
      @ST2ExtensionsConverter() this.extensions = const ST2Extensions(),
      @ST2CharacterBookConverter()
      @JsonKey(name: 'character_book')
      this.characterBook})
      : _tags = tags,
        _alternateGreetings = alternateGreetings,
        super._();

  factory _$ST2DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ST2DataImplFromJson(json);

// Spec V2 fields
  @override
  @JsonKey()
  final String name;
// char name
  @override
  @JsonKey()
  final String description;
// char description
  @override
  @JsonKey()
  final String personality;
// char personality
  @override
  @JsonKey()
  final String scenario;
// char scenario
  @override
  @JsonKey(name: 'first_mes')
  final String firstMes;
// char first_mes
  @override
  @JsonKey(name: 'mes_example')
  final String mesExample;
// char mesExample
// New V2 fields
  @override
  @JsonKey(name: 'creator_notes')
  final String creatorNotes;
// creator notes
  @override
  @JsonKey(name: 'system_prompt')
  final String systemPrompt;
// system prompt
  @override
  @JsonKey(name: 'post_history_instructions')
  final String postHistoryInstructions;
// post history instructions
  final List<String> _tags;
// post history instructions
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey()
  final String creator;
  @override
  @JsonKey(name: 'character_version')
  final String characterVersion;
  final List<String> _alternateGreetings;
  @override
  @AlternateGreetingsConverter()
  @JsonKey(name: 'alternate_greetings')
  List<String> get alternateGreetings {
    if (_alternateGreetings is EqualUnmodifiableListView)
      return _alternateGreetings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alternateGreetings);
  }

// ST extension fields
  @override
  @JsonKey()
  @ST2ExtensionsConverter()
  final ST2Extensions extensions;
  @override
  @ST2CharacterBookConverter()
  @JsonKey(name: 'character_book')
  final ST2CharacterBook? characterBook;

  @override
  String toString() {
    return 'ST2Data(name: $name, description: $description, personality: $personality, scenario: $scenario, firstMes: $firstMes, mesExample: $mesExample, creatorNotes: $creatorNotes, systemPrompt: $systemPrompt, postHistoryInstructions: $postHistoryInstructions, tags: $tags, creator: $creator, characterVersion: $characterVersion, alternateGreetings: $alternateGreetings, extensions: $extensions, characterBook: $characterBook)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ST2DataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.personality, personality) ||
                other.personality == personality) &&
            (identical(other.scenario, scenario) ||
                other.scenario == scenario) &&
            (identical(other.firstMes, firstMes) ||
                other.firstMes == firstMes) &&
            (identical(other.mesExample, mesExample) ||
                other.mesExample == mesExample) &&
            (identical(other.creatorNotes, creatorNotes) ||
                other.creatorNotes == creatorNotes) &&
            (identical(other.systemPrompt, systemPrompt) ||
                other.systemPrompt == systemPrompt) &&
            (identical(
                    other.postHistoryInstructions, postHistoryInstructions) ||
                other.postHistoryInstructions == postHistoryInstructions) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.characterVersion, characterVersion) ||
                other.characterVersion == characterVersion) &&
            const DeepCollectionEquality()
                .equals(other._alternateGreetings, _alternateGreetings) &&
            (identical(other.extensions, extensions) ||
                other.extensions == extensions) &&
            (identical(other.characterBook, characterBook) ||
                other.characterBook == characterBook));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      personality,
      scenario,
      firstMes,
      mesExample,
      creatorNotes,
      systemPrompt,
      postHistoryInstructions,
      const DeepCollectionEquality().hash(_tags),
      creator,
      characterVersion,
      const DeepCollectionEquality().hash(_alternateGreetings),
      extensions,
      characterBook);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ST2DataImplCopyWith<_$ST2DataImpl> get copyWith =>
      __$$ST2DataImplCopyWithImpl<_$ST2DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ST2DataImplToJson(
      this,
    );
  }
}

abstract class _ST2Data extends ST2Data {
  const factory _ST2Data(
      {final String name,
      final String description,
      final String personality,
      final String scenario,
      @JsonKey(name: 'first_mes') final String firstMes,
      @JsonKey(name: 'mes_example') final String mesExample,
      @JsonKey(name: 'creator_notes') final String creatorNotes,
      @JsonKey(name: 'system_prompt') final String systemPrompt,
      @JsonKey(name: 'post_history_instructions')
      final String postHistoryInstructions,
      final List<String> tags,
      final String creator,
      @JsonKey(name: 'character_version') final String characterVersion,
      @AlternateGreetingsConverter()
      @JsonKey(name: 'alternate_greetings')
      final List<String> alternateGreetings,
      @ST2ExtensionsConverter() final ST2Extensions extensions,
      @ST2CharacterBookConverter()
      @JsonKey(name: 'character_book')
      final ST2CharacterBook? characterBook}) = _$ST2DataImpl;
  const _ST2Data._() : super._();

  factory _ST2Data.fromJson(Map<String, dynamic> json) = _$ST2DataImpl.fromJson;

  @override // Spec V2 fields
  String get name;
  @override // char name
  String get description;
  @override // char description
  String get personality;
  @override // char personality
  String get scenario;
  @override // char scenario
  @JsonKey(name: 'first_mes')
  String get firstMes;
  @override // char first_mes
  @JsonKey(name: 'mes_example')
  String get mesExample;
  @override // char mesExample
// New V2 fields
  @JsonKey(name: 'creator_notes')
  String get creatorNotes;
  @override // creator notes
  @JsonKey(name: 'system_prompt')
  String get systemPrompt;
  @override // system prompt
  @JsonKey(name: 'post_history_instructions')
  String get postHistoryInstructions;
  @override // post history instructions
  List<String> get tags;
  @override
  String get creator;
  @override
  @JsonKey(name: 'character_version')
  String get characterVersion;
  @override
  @AlternateGreetingsConverter()
  @JsonKey(name: 'alternate_greetings')
  List<String> get alternateGreetings;
  @override // ST extension fields
  @ST2ExtensionsConverter()
  ST2Extensions get extensions;
  @override
  @ST2CharacterBookConverter()
  @JsonKey(name: 'character_book')
  ST2CharacterBook? get characterBook;
  @override
  @JsonKey(ignore: true)
  _$$ST2DataImplCopyWith<_$ST2DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
