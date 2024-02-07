// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'openai_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenAIOptions _$OpenAIOptionsFromJson(Map<String, dynamic> json) {
  return _OpenAIOptions.fromJson(json);
}

/// @nodoc
mixin _$OpenAIOptions {
  String get model => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenAIOptionsCopyWith<OpenAIOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenAIOptionsCopyWith<$Res> {
  factory $OpenAIOptionsCopyWith(
          OpenAIOptions value, $Res Function(OpenAIOptions) then) =
      _$OpenAIOptionsCopyWithImpl<$Res, OpenAIOptions>;
  @useResult
  $Res call({String model});
}

/// @nodoc
class _$OpenAIOptionsCopyWithImpl<$Res, $Val extends OpenAIOptions>
    implements $OpenAIOptionsCopyWith<$Res> {
  _$OpenAIOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenAIOptionsImplCopyWith<$Res>
    implements $OpenAIOptionsCopyWith<$Res> {
  factory _$$OpenAIOptionsImplCopyWith(
          _$OpenAIOptionsImpl value, $Res Function(_$OpenAIOptionsImpl) then) =
      __$$OpenAIOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String model});
}

/// @nodoc
class __$$OpenAIOptionsImplCopyWithImpl<$Res>
    extends _$OpenAIOptionsCopyWithImpl<$Res, _$OpenAIOptionsImpl>
    implements _$$OpenAIOptionsImplCopyWith<$Res> {
  __$$OpenAIOptionsImplCopyWithImpl(
      _$OpenAIOptionsImpl _value, $Res Function(_$OpenAIOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$OpenAIOptionsImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenAIOptionsImpl extends _OpenAIOptions {
  const _$OpenAIOptionsImpl({this.model = 'gpt-4-1106-preview'}) : super._();

  factory _$OpenAIOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenAIOptionsImplFromJson(json);

  @override
  @JsonKey()
  final String model;

  @override
  String toString() {
    return 'OpenAIOptions(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenAIOptionsImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenAIOptionsImplCopyWith<_$OpenAIOptionsImpl> get copyWith =>
      __$$OpenAIOptionsImplCopyWithImpl<_$OpenAIOptionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenAIOptionsImplToJson(
      this,
    );
  }
}

abstract class _OpenAIOptions extends OpenAIOptions {
  const factory _OpenAIOptions({final String model}) = _$OpenAIOptionsImpl;
  const _OpenAIOptions._() : super._();

  factory _OpenAIOptions.fromJson(Map<String, dynamic> json) =
      _$OpenAIOptionsImpl.fromJson;

  @override
  String get model;
  @override
  @JsonKey(ignore: true)
  _$$OpenAIOptionsImplCopyWith<_$OpenAIOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
