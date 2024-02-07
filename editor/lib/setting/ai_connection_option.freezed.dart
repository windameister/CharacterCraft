// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_connection_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AiConnectionOption _$AiConnectionOptionFromJson(Map<String, dynamic> json) {
  switch (json['serviceType']) {
    case 'none':
      return _None.fromJson(json);
    case 'openAI':
      return _OpenAi.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'serviceType', 'AiConnectionOption',
          'Invalid union type "${json['serviceType']}"!');
  }
}

/// @nodoc
mixin _$AiConnectionOption {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(
            String apiKey, String? organizationId, String baseUrl)
        openAi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(String apiKey, String? organizationId, String baseUrl)?
        openAi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(String apiKey, String? organizationId, String baseUrl)?
        openAi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_OpenAi value) openAi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_OpenAi value)? openAi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_OpenAi value)? openAi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiConnectionOptionCopyWith<$Res> {
  factory $AiConnectionOptionCopyWith(
          AiConnectionOption value, $Res Function(AiConnectionOption) then) =
      _$AiConnectionOptionCopyWithImpl<$Res, AiConnectionOption>;
}

/// @nodoc
class _$AiConnectionOptionCopyWithImpl<$Res, $Val extends AiConnectionOption>
    implements $AiConnectionOptionCopyWith<$Res> {
  _$AiConnectionOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoneImplCopyWith<$Res> {
  factory _$$NoneImplCopyWith(
          _$NoneImpl value, $Res Function(_$NoneImpl) then) =
      __$$NoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoneImplCopyWithImpl<$Res>
    extends _$AiConnectionOptionCopyWithImpl<$Res, _$NoneImpl>
    implements _$$NoneImplCopyWith<$Res> {
  __$$NoneImplCopyWithImpl(_$NoneImpl _value, $Res Function(_$NoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$NoneImpl extends _None {
  const _$NoneImpl({final String? $type})
      : $type = $type ?? 'none',
        super._();

  factory _$NoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoneImplFromJson(json);

  @JsonKey(name: 'serviceType')
  final String $type;

  @override
  String toString() {
    return 'AiConnectionOption.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoneImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(
            String apiKey, String? organizationId, String baseUrl)
        openAi,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(String apiKey, String? organizationId, String baseUrl)?
        openAi,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(String apiKey, String? organizationId, String baseUrl)?
        openAi,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_OpenAi value) openAi,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_OpenAi value)? openAi,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_OpenAi value)? openAi,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoneImplToJson(
      this,
    );
  }
}

abstract class _None extends AiConnectionOption {
  const factory _None() = _$NoneImpl;
  const _None._() : super._();

  factory _None.fromJson(Map<String, dynamic> json) = _$NoneImpl.fromJson;
}

/// @nodoc
abstract class _$$OpenAiImplCopyWith<$Res> {
  factory _$$OpenAiImplCopyWith(
          _$OpenAiImpl value, $Res Function(_$OpenAiImpl) then) =
      __$$OpenAiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String apiKey, String? organizationId, String baseUrl});
}

/// @nodoc
class __$$OpenAiImplCopyWithImpl<$Res>
    extends _$AiConnectionOptionCopyWithImpl<$Res, _$OpenAiImpl>
    implements _$$OpenAiImplCopyWith<$Res> {
  __$$OpenAiImplCopyWithImpl(
      _$OpenAiImpl _value, $Res Function(_$OpenAiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? organizationId = freezed,
    Object? baseUrl = null,
  }) {
    return _then(_$OpenAiImpl(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenAiImpl extends _OpenAi {
  const _$OpenAiImpl(
      {required this.apiKey,
      this.organizationId,
      this.baseUrl = "https://api.openai.com/v1",
      final String? $type})
      : $type = $type ?? 'openAI',
        super._();

  factory _$OpenAiImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenAiImplFromJson(json);

  @override
  final String apiKey;
  @override
  final String? organizationId;
  @override
  @JsonKey()
  final String baseUrl;

  @JsonKey(name: 'serviceType')
  final String $type;

  @override
  String toString() {
    return 'AiConnectionOption.openAi(apiKey: $apiKey, organizationId: $organizationId, baseUrl: $baseUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenAiImpl &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, apiKey, organizationId, baseUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenAiImplCopyWith<_$OpenAiImpl> get copyWith =>
      __$$OpenAiImplCopyWithImpl<_$OpenAiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(
            String apiKey, String? organizationId, String baseUrl)
        openAi,
  }) {
    return openAi(apiKey, organizationId, baseUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(String apiKey, String? organizationId, String baseUrl)?
        openAi,
  }) {
    return openAi?.call(apiKey, organizationId, baseUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(String apiKey, String? organizationId, String baseUrl)?
        openAi,
    required TResult orElse(),
  }) {
    if (openAi != null) {
      return openAi(apiKey, organizationId, baseUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_OpenAi value) openAi,
  }) {
    return openAi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_OpenAi value)? openAi,
  }) {
    return openAi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_OpenAi value)? openAi,
    required TResult orElse(),
  }) {
    if (openAi != null) {
      return openAi(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenAiImplToJson(
      this,
    );
  }
}

abstract class _OpenAi extends AiConnectionOption {
  const factory _OpenAi(
      {required final String apiKey,
      final String? organizationId,
      final String baseUrl}) = _$OpenAiImpl;
  const _OpenAi._() : super._();

  factory _OpenAi.fromJson(Map<String, dynamic> json) = _$OpenAiImpl.fromJson;

  String get apiKey;
  String? get organizationId;
  String get baseUrl;
  @JsonKey(ignore: true)
  _$$OpenAiImplCopyWith<_$OpenAiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
