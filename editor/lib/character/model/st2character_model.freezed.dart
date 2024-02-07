// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'st2character_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GreetingMes {
  String get id => throw _privateConstructorUsedError;
  String get mes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GreetingMesCopyWith<GreetingMes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GreetingMesCopyWith<$Res> {
  factory $GreetingMesCopyWith(
          GreetingMes value, $Res Function(GreetingMes) then) =
      _$GreetingMesCopyWithImpl<$Res, GreetingMes>;
  @useResult
  $Res call({String id, String mes});
}

/// @nodoc
class _$GreetingMesCopyWithImpl<$Res, $Val extends GreetingMes>
    implements $GreetingMesCopyWith<$Res> {
  _$GreetingMesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mes: null == mes
          ? _value.mes
          : mes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GreetingMesImplCopyWith<$Res>
    implements $GreetingMesCopyWith<$Res> {
  factory _$$GreetingMesImplCopyWith(
          _$GreetingMesImpl value, $Res Function(_$GreetingMesImpl) then) =
      __$$GreetingMesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String mes});
}

/// @nodoc
class __$$GreetingMesImplCopyWithImpl<$Res>
    extends _$GreetingMesCopyWithImpl<$Res, _$GreetingMesImpl>
    implements _$$GreetingMesImplCopyWith<$Res> {
  __$$GreetingMesImplCopyWithImpl(
      _$GreetingMesImpl _value, $Res Function(_$GreetingMesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mes = null,
  }) {
    return _then(_$GreetingMesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mes: null == mes
          ? _value.mes
          : mes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GreetingMesImpl extends _GreetingMes {
  const _$GreetingMesImpl({required this.id, required this.mes}) : super._();

  @override
  final String id;
  @override
  final String mes;

  @override
  String toString() {
    return 'GreetingMes(id: $id, mes: $mes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GreetingMesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mes, mes) || other.mes == mes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, mes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GreetingMesImplCopyWith<_$GreetingMesImpl> get copyWith =>
      __$$GreetingMesImplCopyWithImpl<_$GreetingMesImpl>(this, _$identity);
}

abstract class _GreetingMes extends GreetingMes {
  const factory _GreetingMes(
      {required final String id,
      required final String mes}) = _$GreetingMesImpl;
  const _GreetingMes._() : super._();

  @override
  String get id;
  @override
  String get mes;
  @override
  @JsonKey(ignore: true)
  _$$GreetingMesImplCopyWith<_$GreetingMesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ST2CharacterModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get personality => throw _privateConstructorUsedError;
  String get scenario => throw _privateConstructorUsedError;
  BuiltList<GreetingMes> get greetingMes => throw _privateConstructorUsedError;
  String get mesExample => throw _privateConstructorUsedError;
  String get creatorNotes => throw _privateConstructorUsedError;
  String get systemPrompt => throw _privateConstructorUsedError;
  String get postHistoryInstructions => throw _privateConstructorUsedError;
  BuiltList<String> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ST2CharacterModelCopyWith<ST2CharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ST2CharacterModelCopyWith<$Res> {
  factory $ST2CharacterModelCopyWith(
          ST2CharacterModel value, $Res Function(ST2CharacterModel) then) =
      _$ST2CharacterModelCopyWithImpl<$Res, ST2CharacterModel>;
  @useResult
  $Res call(
      {String name,
      String description,
      String personality,
      String scenario,
      BuiltList<GreetingMes> greetingMes,
      String mesExample,
      String creatorNotes,
      String systemPrompt,
      String postHistoryInstructions,
      BuiltList<String> tags});
}

/// @nodoc
class _$ST2CharacterModelCopyWithImpl<$Res, $Val extends ST2CharacterModel>
    implements $ST2CharacterModelCopyWith<$Res> {
  _$ST2CharacterModelCopyWithImpl(this._value, this._then);

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
    Object? greetingMes = null,
    Object? mesExample = null,
    Object? creatorNotes = null,
    Object? systemPrompt = null,
    Object? postHistoryInstructions = null,
    Object? tags = null,
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
      greetingMes: null == greetingMes
          ? _value.greetingMes
          : greetingMes // ignore: cast_nullable_to_non_nullable
              as BuiltList<GreetingMes>,
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
              as BuiltList<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ST2CharacterModelImplCopyWith<$Res>
    implements $ST2CharacterModelCopyWith<$Res> {
  factory _$$ST2CharacterModelImplCopyWith(_$ST2CharacterModelImpl value,
          $Res Function(_$ST2CharacterModelImpl) then) =
      __$$ST2CharacterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String personality,
      String scenario,
      BuiltList<GreetingMes> greetingMes,
      String mesExample,
      String creatorNotes,
      String systemPrompt,
      String postHistoryInstructions,
      BuiltList<String> tags});
}

/// @nodoc
class __$$ST2CharacterModelImplCopyWithImpl<$Res>
    extends _$ST2CharacterModelCopyWithImpl<$Res, _$ST2CharacterModelImpl>
    implements _$$ST2CharacterModelImplCopyWith<$Res> {
  __$$ST2CharacterModelImplCopyWithImpl(_$ST2CharacterModelImpl _value,
      $Res Function(_$ST2CharacterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? personality = null,
    Object? scenario = null,
    Object? greetingMes = null,
    Object? mesExample = null,
    Object? creatorNotes = null,
    Object? systemPrompt = null,
    Object? postHistoryInstructions = null,
    Object? tags = null,
  }) {
    return _then(_$ST2CharacterModelImpl(
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
      greetingMes: null == greetingMes
          ? _value.greetingMes
          : greetingMes // ignore: cast_nullable_to_non_nullable
              as BuiltList<GreetingMes>,
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
              as BuiltList<String>,
    ));
  }
}

/// @nodoc

class _$ST2CharacterModelImpl extends _ST2CharacterModel {
  const _$ST2CharacterModelImpl(
      {this.name = '',
      this.description = '',
      this.personality = '',
      this.scenario = '',
      required this.greetingMes,
      this.mesExample = '',
      this.creatorNotes = '',
      this.systemPrompt = '',
      this.postHistoryInstructions = '',
      required this.tags})
      : super._();

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String personality;
  @override
  @JsonKey()
  final String scenario;
  @override
  final BuiltList<GreetingMes> greetingMes;
  @override
  @JsonKey()
  final String mesExample;
  @override
  @JsonKey()
  final String creatorNotes;
  @override
  @JsonKey()
  final String systemPrompt;
  @override
  @JsonKey()
  final String postHistoryInstructions;
  @override
  final BuiltList<String> tags;

  @override
  String toString() {
    return 'ST2CharacterModel(name: $name, description: $description, personality: $personality, scenario: $scenario, greetingMes: $greetingMes, mesExample: $mesExample, creatorNotes: $creatorNotes, systemPrompt: $systemPrompt, postHistoryInstructions: $postHistoryInstructions, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ST2CharacterModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.personality, personality) ||
                other.personality == personality) &&
            (identical(other.scenario, scenario) ||
                other.scenario == scenario) &&
            const DeepCollectionEquality()
                .equals(other.greetingMes, greetingMes) &&
            (identical(other.mesExample, mesExample) ||
                other.mesExample == mesExample) &&
            (identical(other.creatorNotes, creatorNotes) ||
                other.creatorNotes == creatorNotes) &&
            (identical(other.systemPrompt, systemPrompt) ||
                other.systemPrompt == systemPrompt) &&
            (identical(
                    other.postHistoryInstructions, postHistoryInstructions) ||
                other.postHistoryInstructions == postHistoryInstructions) &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      personality,
      scenario,
      const DeepCollectionEquality().hash(greetingMes),
      mesExample,
      creatorNotes,
      systemPrompt,
      postHistoryInstructions,
      const DeepCollectionEquality().hash(tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ST2CharacterModelImplCopyWith<_$ST2CharacterModelImpl> get copyWith =>
      __$$ST2CharacterModelImplCopyWithImpl<_$ST2CharacterModelImpl>(
          this, _$identity);
}

abstract class _ST2CharacterModel extends ST2CharacterModel {
  const factory _ST2CharacterModel(
      {final String name,
      final String description,
      final String personality,
      final String scenario,
      required final BuiltList<GreetingMes> greetingMes,
      final String mesExample,
      final String creatorNotes,
      final String systemPrompt,
      final String postHistoryInstructions,
      required final BuiltList<String> tags}) = _$ST2CharacterModelImpl;
  const _ST2CharacterModel._() : super._();

  @override
  String get name;
  @override
  String get description;
  @override
  String get personality;
  @override
  String get scenario;
  @override
  BuiltList<GreetingMes> get greetingMes;
  @override
  String get mesExample;
  @override
  String get creatorNotes;
  @override
  String get systemPrompt;
  @override
  String get postHistoryInstructions;
  @override
  BuiltList<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$ST2CharacterModelImplCopyWith<_$ST2CharacterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
