// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'copilot_editing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CopilotEditing {
  String get original => throw _privateConstructorUsedError;
  void Function(String) get onEditComplete =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String original, ValueChanged<String> onEditComplete)
        startEditing,
    required TResult Function(
            String original, ValueChanged<String> onEditComplete, String prompt)
        prompting,
    required TResult Function(String original,
            ValueChanged<String> onEditComplete, String prompt, String updated)
        needConfirmation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String original, ValueChanged<String> onEditComplete)?
        startEditing,
    TResult? Function(String original, ValueChanged<String> onEditComplete,
            String prompt)?
        prompting,
    TResult? Function(String original, ValueChanged<String> onEditComplete,
            String prompt, String updated)?
        needConfirmation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String original, ValueChanged<String> onEditComplete)?
        startEditing,
    TResult Function(String original, ValueChanged<String> onEditComplete,
            String prompt)?
        prompting,
    TResult Function(String original, ValueChanged<String> onEditComplete,
            String prompt, String updated)?
        needConfirmation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartEditing value) startEditing,
    required TResult Function(_Prompting value) prompting,
    required TResult Function(_NeedConfirmation value) needConfirmation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartEditing value)? startEditing,
    TResult? Function(_Prompting value)? prompting,
    TResult? Function(_NeedConfirmation value)? needConfirmation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartEditing value)? startEditing,
    TResult Function(_Prompting value)? prompting,
    TResult Function(_NeedConfirmation value)? needConfirmation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CopilotEditingCopyWith<CopilotEditing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopilotEditingCopyWith<$Res> {
  factory $CopilotEditingCopyWith(
          CopilotEditing value, $Res Function(CopilotEditing) then) =
      _$CopilotEditingCopyWithImpl<$Res, CopilotEditing>;
  @useResult
  $Res call({String original, void Function(String) onEditComplete});
}

/// @nodoc
class _$CopilotEditingCopyWithImpl<$Res, $Val extends CopilotEditing>
    implements $CopilotEditingCopyWith<$Res> {
  _$CopilotEditingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? onEditComplete = null,
  }) {
    return _then(_value.copyWith(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      onEditComplete: null == onEditComplete
          ? _value.onEditComplete
          : onEditComplete // ignore: cast_nullable_to_non_nullable
              as void Function(String),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartEditingImplCopyWith<$Res>
    implements $CopilotEditingCopyWith<$Res> {
  factory _$$StartEditingImplCopyWith(
          _$StartEditingImpl value, $Res Function(_$StartEditingImpl) then) =
      __$$StartEditingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String original, ValueChanged<String> onEditComplete});
}

/// @nodoc
class __$$StartEditingImplCopyWithImpl<$Res>
    extends _$CopilotEditingCopyWithImpl<$Res, _$StartEditingImpl>
    implements _$$StartEditingImplCopyWith<$Res> {
  __$$StartEditingImplCopyWithImpl(
      _$StartEditingImpl _value, $Res Function(_$StartEditingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? onEditComplete = null,
  }) {
    return _then(_$StartEditingImpl(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      onEditComplete: null == onEditComplete
          ? _value.onEditComplete
          : onEditComplete // ignore: cast_nullable_to_non_nullable
              as ValueChanged<String>,
    ));
  }
}

/// @nodoc

class _$StartEditingImpl extends _StartEditing {
  const _$StartEditingImpl(
      {required this.original, required this.onEditComplete})
      : super._();

  @override
  final String original;
  @override
  final ValueChanged<String> onEditComplete;

  @override
  String toString() {
    return 'CopilotEditing.startEditing(original: $original, onEditComplete: $onEditComplete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartEditingImpl &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.onEditComplete, onEditComplete) ||
                other.onEditComplete == onEditComplete));
  }

  @override
  int get hashCode => Object.hash(runtimeType, original, onEditComplete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartEditingImplCopyWith<_$StartEditingImpl> get copyWith =>
      __$$StartEditingImplCopyWithImpl<_$StartEditingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String original, ValueChanged<String> onEditComplete)
        startEditing,
    required TResult Function(
            String original, ValueChanged<String> onEditComplete, String prompt)
        prompting,
    required TResult Function(String original,
            ValueChanged<String> onEditComplete, String prompt, String updated)
        needConfirmation,
  }) {
    return startEditing(original, onEditComplete);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String original, ValueChanged<String> onEditComplete)?
        startEditing,
    TResult? Function(String original, ValueChanged<String> onEditComplete,
            String prompt)?
        prompting,
    TResult? Function(String original, ValueChanged<String> onEditComplete,
            String prompt, String updated)?
        needConfirmation,
  }) {
    return startEditing?.call(original, onEditComplete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String original, ValueChanged<String> onEditComplete)?
        startEditing,
    TResult Function(String original, ValueChanged<String> onEditComplete,
            String prompt)?
        prompting,
    TResult Function(String original, ValueChanged<String> onEditComplete,
            String prompt, String updated)?
        needConfirmation,
    required TResult orElse(),
  }) {
    if (startEditing != null) {
      return startEditing(original, onEditComplete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartEditing value) startEditing,
    required TResult Function(_Prompting value) prompting,
    required TResult Function(_NeedConfirmation value) needConfirmation,
  }) {
    return startEditing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartEditing value)? startEditing,
    TResult? Function(_Prompting value)? prompting,
    TResult? Function(_NeedConfirmation value)? needConfirmation,
  }) {
    return startEditing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartEditing value)? startEditing,
    TResult Function(_Prompting value)? prompting,
    TResult Function(_NeedConfirmation value)? needConfirmation,
    required TResult orElse(),
  }) {
    if (startEditing != null) {
      return startEditing(this);
    }
    return orElse();
  }
}

abstract class _StartEditing extends CopilotEditing {
  const factory _StartEditing(
      {required final String original,
      required final ValueChanged<String> onEditComplete}) = _$StartEditingImpl;
  const _StartEditing._() : super._();

  @override
  String get original;
  @override
  ValueChanged<String> get onEditComplete;
  @override
  @JsonKey(ignore: true)
  _$$StartEditingImplCopyWith<_$StartEditingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PromptingImplCopyWith<$Res>
    implements $CopilotEditingCopyWith<$Res> {
  factory _$$PromptingImplCopyWith(
          _$PromptingImpl value, $Res Function(_$PromptingImpl) then) =
      __$$PromptingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String original, ValueChanged<String> onEditComplete, String prompt});
}

/// @nodoc
class __$$PromptingImplCopyWithImpl<$Res>
    extends _$CopilotEditingCopyWithImpl<$Res, _$PromptingImpl>
    implements _$$PromptingImplCopyWith<$Res> {
  __$$PromptingImplCopyWithImpl(
      _$PromptingImpl _value, $Res Function(_$PromptingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? onEditComplete = null,
    Object? prompt = null,
  }) {
    return _then(_$PromptingImpl(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      onEditComplete: null == onEditComplete
          ? _value.onEditComplete
          : onEditComplete // ignore: cast_nullable_to_non_nullable
              as ValueChanged<String>,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PromptingImpl extends _Prompting {
  const _$PromptingImpl(
      {required this.original,
      required this.onEditComplete,
      required this.prompt})
      : super._();

  @override
  final String original;
  @override
  final ValueChanged<String> onEditComplete;
  @override
  final String prompt;

  @override
  String toString() {
    return 'CopilotEditing.prompting(original: $original, onEditComplete: $onEditComplete, prompt: $prompt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromptingImpl &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.onEditComplete, onEditComplete) ||
                other.onEditComplete == onEditComplete) &&
            (identical(other.prompt, prompt) || other.prompt == prompt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, original, onEditComplete, prompt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromptingImplCopyWith<_$PromptingImpl> get copyWith =>
      __$$PromptingImplCopyWithImpl<_$PromptingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String original, ValueChanged<String> onEditComplete)
        startEditing,
    required TResult Function(
            String original, ValueChanged<String> onEditComplete, String prompt)
        prompting,
    required TResult Function(String original,
            ValueChanged<String> onEditComplete, String prompt, String updated)
        needConfirmation,
  }) {
    return prompting(original, onEditComplete, prompt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String original, ValueChanged<String> onEditComplete)?
        startEditing,
    TResult? Function(String original, ValueChanged<String> onEditComplete,
            String prompt)?
        prompting,
    TResult? Function(String original, ValueChanged<String> onEditComplete,
            String prompt, String updated)?
        needConfirmation,
  }) {
    return prompting?.call(original, onEditComplete, prompt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String original, ValueChanged<String> onEditComplete)?
        startEditing,
    TResult Function(String original, ValueChanged<String> onEditComplete,
            String prompt)?
        prompting,
    TResult Function(String original, ValueChanged<String> onEditComplete,
            String prompt, String updated)?
        needConfirmation,
    required TResult orElse(),
  }) {
    if (prompting != null) {
      return prompting(original, onEditComplete, prompt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartEditing value) startEditing,
    required TResult Function(_Prompting value) prompting,
    required TResult Function(_NeedConfirmation value) needConfirmation,
  }) {
    return prompting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartEditing value)? startEditing,
    TResult? Function(_Prompting value)? prompting,
    TResult? Function(_NeedConfirmation value)? needConfirmation,
  }) {
    return prompting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartEditing value)? startEditing,
    TResult Function(_Prompting value)? prompting,
    TResult Function(_NeedConfirmation value)? needConfirmation,
    required TResult orElse(),
  }) {
    if (prompting != null) {
      return prompting(this);
    }
    return orElse();
  }
}

abstract class _Prompting extends CopilotEditing {
  const factory _Prompting(
      {required final String original,
      required final ValueChanged<String> onEditComplete,
      required final String prompt}) = _$PromptingImpl;
  const _Prompting._() : super._();

  @override
  String get original;
  @override
  ValueChanged<String> get onEditComplete;
  String get prompt;
  @override
  @JsonKey(ignore: true)
  _$$PromptingImplCopyWith<_$PromptingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NeedConfirmationImplCopyWith<$Res>
    implements $CopilotEditingCopyWith<$Res> {
  factory _$$NeedConfirmationImplCopyWith(_$NeedConfirmationImpl value,
          $Res Function(_$NeedConfirmationImpl) then) =
      __$$NeedConfirmationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String original,
      ValueChanged<String> onEditComplete,
      String prompt,
      String updated});
}

/// @nodoc
class __$$NeedConfirmationImplCopyWithImpl<$Res>
    extends _$CopilotEditingCopyWithImpl<$Res, _$NeedConfirmationImpl>
    implements _$$NeedConfirmationImplCopyWith<$Res> {
  __$$NeedConfirmationImplCopyWithImpl(_$NeedConfirmationImpl _value,
      $Res Function(_$NeedConfirmationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? onEditComplete = null,
    Object? prompt = null,
    Object? updated = null,
  }) {
    return _then(_$NeedConfirmationImpl(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      onEditComplete: null == onEditComplete
          ? _value.onEditComplete
          : onEditComplete // ignore: cast_nullable_to_non_nullable
              as ValueChanged<String>,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NeedConfirmationImpl extends _NeedConfirmation {
  const _$NeedConfirmationImpl(
      {required this.original,
      required this.onEditComplete,
      required this.prompt,
      required this.updated})
      : super._();

  @override
  final String original;
  @override
  final ValueChanged<String> onEditComplete;
  @override
  final String prompt;
  @override
  final String updated;

  @override
  String toString() {
    return 'CopilotEditing.needConfirmation(original: $original, onEditComplete: $onEditComplete, prompt: $prompt, updated: $updated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NeedConfirmationImpl &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.onEditComplete, onEditComplete) ||
                other.onEditComplete == onEditComplete) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, original, onEditComplete, prompt, updated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NeedConfirmationImplCopyWith<_$NeedConfirmationImpl> get copyWith =>
      __$$NeedConfirmationImplCopyWithImpl<_$NeedConfirmationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String original, ValueChanged<String> onEditComplete)
        startEditing,
    required TResult Function(
            String original, ValueChanged<String> onEditComplete, String prompt)
        prompting,
    required TResult Function(String original,
            ValueChanged<String> onEditComplete, String prompt, String updated)
        needConfirmation,
  }) {
    return needConfirmation(original, onEditComplete, prompt, updated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String original, ValueChanged<String> onEditComplete)?
        startEditing,
    TResult? Function(String original, ValueChanged<String> onEditComplete,
            String prompt)?
        prompting,
    TResult? Function(String original, ValueChanged<String> onEditComplete,
            String prompt, String updated)?
        needConfirmation,
  }) {
    return needConfirmation?.call(original, onEditComplete, prompt, updated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String original, ValueChanged<String> onEditComplete)?
        startEditing,
    TResult Function(String original, ValueChanged<String> onEditComplete,
            String prompt)?
        prompting,
    TResult Function(String original, ValueChanged<String> onEditComplete,
            String prompt, String updated)?
        needConfirmation,
    required TResult orElse(),
  }) {
    if (needConfirmation != null) {
      return needConfirmation(original, onEditComplete, prompt, updated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartEditing value) startEditing,
    required TResult Function(_Prompting value) prompting,
    required TResult Function(_NeedConfirmation value) needConfirmation,
  }) {
    return needConfirmation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartEditing value)? startEditing,
    TResult? Function(_Prompting value)? prompting,
    TResult? Function(_NeedConfirmation value)? needConfirmation,
  }) {
    return needConfirmation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartEditing value)? startEditing,
    TResult Function(_Prompting value)? prompting,
    TResult Function(_NeedConfirmation value)? needConfirmation,
    required TResult orElse(),
  }) {
    if (needConfirmation != null) {
      return needConfirmation(this);
    }
    return orElse();
  }
}

abstract class _NeedConfirmation extends CopilotEditing {
  const factory _NeedConfirmation(
      {required final String original,
      required final ValueChanged<String> onEditComplete,
      required final String prompt,
      required final String updated}) = _$NeedConfirmationImpl;
  const _NeedConfirmation._() : super._();

  @override
  String get original;
  @override
  ValueChanged<String> get onEditComplete;
  String get prompt;
  String get updated;
  @override
  @JsonKey(ignore: true)
  _$$NeedConfirmationImplCopyWith<_$NeedConfirmationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
