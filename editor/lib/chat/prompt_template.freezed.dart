// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prompt_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromptTemplate _$PromptTemplateFromJson(Map<String, dynamic> json) {
  return _PromptTemplate.fromJson(json);
}

/// @nodoc
mixin _$PromptTemplate {
  String get mainPrompt => throw _privateConstructorUsedError;
  String get nsfwPrompt => throw _privateConstructorUsedError;
  String get jailBreak => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromptTemplateCopyWith<PromptTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptTemplateCopyWith<$Res> {
  factory $PromptTemplateCopyWith(
          PromptTemplate value, $Res Function(PromptTemplate) then) =
      _$PromptTemplateCopyWithImpl<$Res, PromptTemplate>;
  @useResult
  $Res call({String mainPrompt, String nsfwPrompt, String jailBreak});
}

/// @nodoc
class _$PromptTemplateCopyWithImpl<$Res, $Val extends PromptTemplate>
    implements $PromptTemplateCopyWith<$Res> {
  _$PromptTemplateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainPrompt = null,
    Object? nsfwPrompt = null,
    Object? jailBreak = null,
  }) {
    return _then(_value.copyWith(
      mainPrompt: null == mainPrompt
          ? _value.mainPrompt
          : mainPrompt // ignore: cast_nullable_to_non_nullable
              as String,
      nsfwPrompt: null == nsfwPrompt
          ? _value.nsfwPrompt
          : nsfwPrompt // ignore: cast_nullable_to_non_nullable
              as String,
      jailBreak: null == jailBreak
          ? _value.jailBreak
          : jailBreak // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromptTemplateImplCopyWith<$Res>
    implements $PromptTemplateCopyWith<$Res> {
  factory _$$PromptTemplateImplCopyWith(_$PromptTemplateImpl value,
          $Res Function(_$PromptTemplateImpl) then) =
      __$$PromptTemplateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mainPrompt, String nsfwPrompt, String jailBreak});
}

/// @nodoc
class __$$PromptTemplateImplCopyWithImpl<$Res>
    extends _$PromptTemplateCopyWithImpl<$Res, _$PromptTemplateImpl>
    implements _$$PromptTemplateImplCopyWith<$Res> {
  __$$PromptTemplateImplCopyWithImpl(
      _$PromptTemplateImpl _value, $Res Function(_$PromptTemplateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainPrompt = null,
    Object? nsfwPrompt = null,
    Object? jailBreak = null,
  }) {
    return _then(_$PromptTemplateImpl(
      mainPrompt: null == mainPrompt
          ? _value.mainPrompt
          : mainPrompt // ignore: cast_nullable_to_non_nullable
              as String,
      nsfwPrompt: null == nsfwPrompt
          ? _value.nsfwPrompt
          : nsfwPrompt // ignore: cast_nullable_to_non_nullable
              as String,
      jailBreak: null == jailBreak
          ? _value.jailBreak
          : jailBreak // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromptTemplateImpl extends _PromptTemplate {
  const _$PromptTemplateImpl(
      {required this.mainPrompt,
      required this.nsfwPrompt,
      required this.jailBreak})
      : super._();

  factory _$PromptTemplateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromptTemplateImplFromJson(json);

  @override
  final String mainPrompt;
  @override
  final String nsfwPrompt;
  @override
  final String jailBreak;

  @override
  String toString() {
    return 'PromptTemplate(mainPrompt: $mainPrompt, nsfwPrompt: $nsfwPrompt, jailBreak: $jailBreak)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromptTemplateImpl &&
            (identical(other.mainPrompt, mainPrompt) ||
                other.mainPrompt == mainPrompt) &&
            (identical(other.nsfwPrompt, nsfwPrompt) ||
                other.nsfwPrompt == nsfwPrompt) &&
            (identical(other.jailBreak, jailBreak) ||
                other.jailBreak == jailBreak));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mainPrompt, nsfwPrompt, jailBreak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromptTemplateImplCopyWith<_$PromptTemplateImpl> get copyWith =>
      __$$PromptTemplateImplCopyWithImpl<_$PromptTemplateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromptTemplateImplToJson(
      this,
    );
  }
}

abstract class _PromptTemplate extends PromptTemplate {
  const factory _PromptTemplate(
      {required final String mainPrompt,
      required final String nsfwPrompt,
      required final String jailBreak}) = _$PromptTemplateImpl;
  const _PromptTemplate._() : super._();

  factory _PromptTemplate.fromJson(Map<String, dynamic> json) =
      _$PromptTemplateImpl.fromJson;

  @override
  String get mainPrompt;
  @override
  String get nsfwPrompt;
  @override
  String get jailBreak;
  @override
  @JsonKey(ignore: true)
  _$$PromptTemplateImplCopyWith<_$PromptTemplateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
