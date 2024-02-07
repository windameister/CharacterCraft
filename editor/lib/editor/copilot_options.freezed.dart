// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'copilot_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CopilotOptions _$CopilotOptionsFromJson(Map<String, dynamic> json) {
  return _CopilotOptions.fromJson(json);
}

/// @nodoc
mixin _$CopilotOptions {
  bool get copilotEnabled => throw _privateConstructorUsedError;
  bool get copilotUseCharacterContext => throw _privateConstructorUsedError;
  String get generalEditingPrompt => throw _privateConstructorUsedError;
  String get expandPrompt => throw _privateConstructorUsedError;
  String get revisePrompt => throw _privateConstructorUsedError;
  String get summaryPrompt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CopilotOptionsCopyWith<CopilotOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopilotOptionsCopyWith<$Res> {
  factory $CopilotOptionsCopyWith(
          CopilotOptions value, $Res Function(CopilotOptions) then) =
      _$CopilotOptionsCopyWithImpl<$Res, CopilotOptions>;
  @useResult
  $Res call(
      {bool copilotEnabled,
      bool copilotUseCharacterContext,
      String generalEditingPrompt,
      String expandPrompt,
      String revisePrompt,
      String summaryPrompt});
}

/// @nodoc
class _$CopilotOptionsCopyWithImpl<$Res, $Val extends CopilotOptions>
    implements $CopilotOptionsCopyWith<$Res> {
  _$CopilotOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copilotEnabled = null,
    Object? copilotUseCharacterContext = null,
    Object? generalEditingPrompt = null,
    Object? expandPrompt = null,
    Object? revisePrompt = null,
    Object? summaryPrompt = null,
  }) {
    return _then(_value.copyWith(
      copilotEnabled: null == copilotEnabled
          ? _value.copilotEnabled
          : copilotEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      copilotUseCharacterContext: null == copilotUseCharacterContext
          ? _value.copilotUseCharacterContext
          : copilotUseCharacterContext // ignore: cast_nullable_to_non_nullable
              as bool,
      generalEditingPrompt: null == generalEditingPrompt
          ? _value.generalEditingPrompt
          : generalEditingPrompt // ignore: cast_nullable_to_non_nullable
              as String,
      expandPrompt: null == expandPrompt
          ? _value.expandPrompt
          : expandPrompt // ignore: cast_nullable_to_non_nullable
              as String,
      revisePrompt: null == revisePrompt
          ? _value.revisePrompt
          : revisePrompt // ignore: cast_nullable_to_non_nullable
              as String,
      summaryPrompt: null == summaryPrompt
          ? _value.summaryPrompt
          : summaryPrompt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CopilotOptionsImplCopyWith<$Res>
    implements $CopilotOptionsCopyWith<$Res> {
  factory _$$CopilotOptionsImplCopyWith(_$CopilotOptionsImpl value,
          $Res Function(_$CopilotOptionsImpl) then) =
      __$$CopilotOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool copilotEnabled,
      bool copilotUseCharacterContext,
      String generalEditingPrompt,
      String expandPrompt,
      String revisePrompt,
      String summaryPrompt});
}

/// @nodoc
class __$$CopilotOptionsImplCopyWithImpl<$Res>
    extends _$CopilotOptionsCopyWithImpl<$Res, _$CopilotOptionsImpl>
    implements _$$CopilotOptionsImplCopyWith<$Res> {
  __$$CopilotOptionsImplCopyWithImpl(
      _$CopilotOptionsImpl _value, $Res Function(_$CopilotOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copilotEnabled = null,
    Object? copilotUseCharacterContext = null,
    Object? generalEditingPrompt = null,
    Object? expandPrompt = null,
    Object? revisePrompt = null,
    Object? summaryPrompt = null,
  }) {
    return _then(_$CopilotOptionsImpl(
      copilotEnabled: null == copilotEnabled
          ? _value.copilotEnabled
          : copilotEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      copilotUseCharacterContext: null == copilotUseCharacterContext
          ? _value.copilotUseCharacterContext
          : copilotUseCharacterContext // ignore: cast_nullable_to_non_nullable
              as bool,
      generalEditingPrompt: null == generalEditingPrompt
          ? _value.generalEditingPrompt
          : generalEditingPrompt // ignore: cast_nullable_to_non_nullable
              as String,
      expandPrompt: null == expandPrompt
          ? _value.expandPrompt
          : expandPrompt // ignore: cast_nullable_to_non_nullable
              as String,
      revisePrompt: null == revisePrompt
          ? _value.revisePrompt
          : revisePrompt // ignore: cast_nullable_to_non_nullable
              as String,
      summaryPrompt: null == summaryPrompt
          ? _value.summaryPrompt
          : summaryPrompt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CopilotOptionsImpl extends _CopilotOptions {
  _$CopilotOptionsImpl(
      {required this.copilotEnabled,
      required this.copilotUseCharacterContext,
      required this.generalEditingPrompt,
      required this.expandPrompt,
      required this.revisePrompt,
      required this.summaryPrompt})
      : super._();

  factory _$CopilotOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CopilotOptionsImplFromJson(json);

  @override
  final bool copilotEnabled;
  @override
  final bool copilotUseCharacterContext;
  @override
  final String generalEditingPrompt;
  @override
  final String expandPrompt;
  @override
  final String revisePrompt;
  @override
  final String summaryPrompt;

  @override
  String toString() {
    return 'CopilotOptions(copilotEnabled: $copilotEnabled, copilotUseCharacterContext: $copilotUseCharacterContext, generalEditingPrompt: $generalEditingPrompt, expandPrompt: $expandPrompt, revisePrompt: $revisePrompt, summaryPrompt: $summaryPrompt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopilotOptionsImpl &&
            (identical(other.copilotEnabled, copilotEnabled) ||
                other.copilotEnabled == copilotEnabled) &&
            (identical(other.copilotUseCharacterContext,
                    copilotUseCharacterContext) ||
                other.copilotUseCharacterContext ==
                    copilotUseCharacterContext) &&
            (identical(other.generalEditingPrompt, generalEditingPrompt) ||
                other.generalEditingPrompt == generalEditingPrompt) &&
            (identical(other.expandPrompt, expandPrompt) ||
                other.expandPrompt == expandPrompt) &&
            (identical(other.revisePrompt, revisePrompt) ||
                other.revisePrompt == revisePrompt) &&
            (identical(other.summaryPrompt, summaryPrompt) ||
                other.summaryPrompt == summaryPrompt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      copilotEnabled,
      copilotUseCharacterContext,
      generalEditingPrompt,
      expandPrompt,
      revisePrompt,
      summaryPrompt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CopilotOptionsImplCopyWith<_$CopilotOptionsImpl> get copyWith =>
      __$$CopilotOptionsImplCopyWithImpl<_$CopilotOptionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CopilotOptionsImplToJson(
      this,
    );
  }
}

abstract class _CopilotOptions extends CopilotOptions {
  factory _CopilotOptions(
      {required final bool copilotEnabled,
      required final bool copilotUseCharacterContext,
      required final String generalEditingPrompt,
      required final String expandPrompt,
      required final String revisePrompt,
      required final String summaryPrompt}) = _$CopilotOptionsImpl;
  _CopilotOptions._() : super._();

  factory _CopilotOptions.fromJson(Map<String, dynamic> json) =
      _$CopilotOptionsImpl.fromJson;

  @override
  bool get copilotEnabled;
  @override
  bool get copilotUseCharacterContext;
  @override
  String get generalEditingPrompt;
  @override
  String get expandPrompt;
  @override
  String get revisePrompt;
  @override
  String get summaryPrompt;
  @override
  @JsonKey(ignore: true)
  _$$CopilotOptionsImplCopyWith<_$CopilotOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
