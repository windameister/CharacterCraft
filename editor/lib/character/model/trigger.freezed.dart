// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trigger.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StatusValue {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stringValue) string,
    required TResult Function(double numberValue) number,
    required TResult Function(bool booleanValue) boolean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String stringValue)? string,
    TResult? Function(double numberValue)? number,
    TResult? Function(bool booleanValue)? boolean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stringValue)? string,
    TResult Function(double numberValue)? number,
    TResult Function(bool booleanValue)? boolean,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StringValue value) string,
    required TResult Function(_NumberValue value) number,
    required TResult Function(_BooleanValue value) boolean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StringValue value)? string,
    TResult? Function(_NumberValue value)? number,
    TResult? Function(_BooleanValue value)? boolean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StringValue value)? string,
    TResult Function(_NumberValue value)? number,
    TResult Function(_BooleanValue value)? boolean,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusValueCopyWith<$Res> {
  factory $StatusValueCopyWith(
          StatusValue value, $Res Function(StatusValue) then) =
      _$StatusValueCopyWithImpl<$Res, StatusValue>;
}

/// @nodoc
class _$StatusValueCopyWithImpl<$Res, $Val extends StatusValue>
    implements $StatusValueCopyWith<$Res> {
  _$StatusValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StringValueImplCopyWith<$Res> {
  factory _$$StringValueImplCopyWith(
          _$StringValueImpl value, $Res Function(_$StringValueImpl) then) =
      __$$StringValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String stringValue});
}

/// @nodoc
class __$$StringValueImplCopyWithImpl<$Res>
    extends _$StatusValueCopyWithImpl<$Res, _$StringValueImpl>
    implements _$$StringValueImplCopyWith<$Res> {
  __$$StringValueImplCopyWithImpl(
      _$StringValueImpl _value, $Res Function(_$StringValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stringValue = null,
  }) {
    return _then(_$StringValueImpl(
      stringValue: null == stringValue
          ? _value.stringValue
          : stringValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StringValueImpl implements _StringValue {
  const _$StringValueImpl({required this.stringValue = ''});

  @override
  @JsonKey()
  final String stringValue;

  @override
  String toString() {
    return 'StatusValue.string(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringValueImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StringValueImplCopyWith<_$StringValueImpl> get copyWith =>
      __$$StringValueImplCopyWithImpl<_$StringValueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stringValue) string,
    required TResult Function(double numberValue) number,
    required TResult Function(bool booleanValue) boolean,
  }) {
    return string(stringValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String stringValue)? string,
    TResult? Function(double numberValue)? number,
    TResult? Function(bool booleanValue)? boolean,
  }) {
    return string?.call(stringValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stringValue)? string,
    TResult Function(double numberValue)? number,
    TResult Function(bool booleanValue)? boolean,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(stringValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StringValue value) string,
    required TResult Function(_NumberValue value) number,
    required TResult Function(_BooleanValue value) boolean,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StringValue value)? string,
    TResult? Function(_NumberValue value)? number,
    TResult? Function(_BooleanValue value)? boolean,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StringValue value)? string,
    TResult Function(_NumberValue value)? number,
    TResult Function(_BooleanValue value)? boolean,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }
}

abstract class _StringValue implements StatusValue {
  const factory _StringValue({required final String stringValue}) =
      _$StringValueImpl;

  String get stringValue;
  @JsonKey(ignore: true)
  _$$StringValueImplCopyWith<_$StringValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumberValueImplCopyWith<$Res> {
  factory _$$NumberValueImplCopyWith(
          _$NumberValueImpl value, $Res Function(_$NumberValueImpl) then) =
      __$$NumberValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double numberValue});
}

/// @nodoc
class __$$NumberValueImplCopyWithImpl<$Res>
    extends _$StatusValueCopyWithImpl<$Res, _$NumberValueImpl>
    implements _$$NumberValueImplCopyWith<$Res> {
  __$$NumberValueImplCopyWithImpl(
      _$NumberValueImpl _value, $Res Function(_$NumberValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberValue = null,
  }) {
    return _then(_$NumberValueImpl(
      numberValue: null == numberValue
          ? _value.numberValue
          : numberValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$NumberValueImpl implements _NumberValue {
  const _$NumberValueImpl({required this.numberValue = 0});

  @override
  @JsonKey()
  final double numberValue;

  @override
  String toString() {
    return 'StatusValue.number(numberValue: $numberValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberValueImpl &&
            (identical(other.numberValue, numberValue) ||
                other.numberValue == numberValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numberValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberValueImplCopyWith<_$NumberValueImpl> get copyWith =>
      __$$NumberValueImplCopyWithImpl<_$NumberValueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stringValue) string,
    required TResult Function(double numberValue) number,
    required TResult Function(bool booleanValue) boolean,
  }) {
    return number(numberValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String stringValue)? string,
    TResult? Function(double numberValue)? number,
    TResult? Function(bool booleanValue)? boolean,
  }) {
    return number?.call(numberValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stringValue)? string,
    TResult Function(double numberValue)? number,
    TResult Function(bool booleanValue)? boolean,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(numberValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StringValue value) string,
    required TResult Function(_NumberValue value) number,
    required TResult Function(_BooleanValue value) boolean,
  }) {
    return number(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StringValue value)? string,
    TResult? Function(_NumberValue value)? number,
    TResult? Function(_BooleanValue value)? boolean,
  }) {
    return number?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StringValue value)? string,
    TResult Function(_NumberValue value)? number,
    TResult Function(_BooleanValue value)? boolean,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(this);
    }
    return orElse();
  }
}

abstract class _NumberValue implements StatusValue {
  const factory _NumberValue({required final double numberValue}) =
      _$NumberValueImpl;

  double get numberValue;
  @JsonKey(ignore: true)
  _$$NumberValueImplCopyWith<_$NumberValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BooleanValueImplCopyWith<$Res> {
  factory _$$BooleanValueImplCopyWith(
          _$BooleanValueImpl value, $Res Function(_$BooleanValueImpl) then) =
      __$$BooleanValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool booleanValue});
}

/// @nodoc
class __$$BooleanValueImplCopyWithImpl<$Res>
    extends _$StatusValueCopyWithImpl<$Res, _$BooleanValueImpl>
    implements _$$BooleanValueImplCopyWith<$Res> {
  __$$BooleanValueImplCopyWithImpl(
      _$BooleanValueImpl _value, $Res Function(_$BooleanValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booleanValue = null,
  }) {
    return _then(_$BooleanValueImpl(
      booleanValue: null == booleanValue
          ? _value.booleanValue
          : booleanValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BooleanValueImpl implements _BooleanValue {
  const _$BooleanValueImpl({required this.booleanValue = false});

  @override
  @JsonKey()
  final bool booleanValue;

  @override
  String toString() {
    return 'StatusValue.boolean(booleanValue: $booleanValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanValueImpl &&
            (identical(other.booleanValue, booleanValue) ||
                other.booleanValue == booleanValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, booleanValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooleanValueImplCopyWith<_$BooleanValueImpl> get copyWith =>
      __$$BooleanValueImplCopyWithImpl<_$BooleanValueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stringValue) string,
    required TResult Function(double numberValue) number,
    required TResult Function(bool booleanValue) boolean,
  }) {
    return boolean(booleanValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String stringValue)? string,
    TResult? Function(double numberValue)? number,
    TResult? Function(bool booleanValue)? boolean,
  }) {
    return boolean?.call(booleanValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stringValue)? string,
    TResult Function(double numberValue)? number,
    TResult Function(bool booleanValue)? boolean,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(booleanValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StringValue value) string,
    required TResult Function(_NumberValue value) number,
    required TResult Function(_BooleanValue value) boolean,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StringValue value)? string,
    TResult? Function(_NumberValue value)? number,
    TResult? Function(_BooleanValue value)? boolean,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StringValue value)? string,
    TResult Function(_NumberValue value)? number,
    TResult Function(_BooleanValue value)? boolean,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(this);
    }
    return orElse();
  }
}

abstract class _BooleanValue implements StatusValue {
  const factory _BooleanValue({required final bool booleanValue}) =
      _$BooleanValueImpl;

  bool get booleanValue;
  @JsonKey(ignore: true)
  _$$BooleanValueImplCopyWith<_$BooleanValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Status {
  String get name => throw _privateConstructorUsedError;
  StatusValue get value => throw _privateConstructorUsedError; // status trigger
  Trigger? get valueTrigger => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
  @useResult
  $Res call({String name, StatusValue value, Trigger? valueTrigger});

  $StatusValueCopyWith<$Res> get value;
  $TriggerCopyWith<$Res>? get valueTrigger;
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? valueTrigger = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as StatusValue,
      valueTrigger: freezed == valueTrigger
          ? _value.valueTrigger
          : valueTrigger // ignore: cast_nullable_to_non_nullable
              as Trigger?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusValueCopyWith<$Res> get value {
    return $StatusValueCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TriggerCopyWith<$Res>? get valueTrigger {
    if (_value.valueTrigger == null) {
      return null;
    }

    return $TriggerCopyWith<$Res>(_value.valueTrigger!, (value) {
      return _then(_value.copyWith(valueTrigger: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatusImplCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$StatusImplCopyWith(
          _$StatusImpl value, $Res Function(_$StatusImpl) then) =
      __$$StatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, StatusValue value, Trigger? valueTrigger});

  @override
  $StatusValueCopyWith<$Res> get value;
  @override
  $TriggerCopyWith<$Res>? get valueTrigger;
}

/// @nodoc
class __$$StatusImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusImpl>
    implements _$$StatusImplCopyWith<$Res> {
  __$$StatusImplCopyWithImpl(
      _$StatusImpl _value, $Res Function(_$StatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? valueTrigger = freezed,
  }) {
    return _then(_$StatusImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as StatusValue,
      valueTrigger: freezed == valueTrigger
          ? _value.valueTrigger
          : valueTrigger // ignore: cast_nullable_to_non_nullable
              as Trigger?,
    ));
  }
}

/// @nodoc

class _$StatusImpl implements _Status {
  const _$StatusImpl(
      {required this.name, required this.value, this.valueTrigger});

  @override
  final String name;
  @override
  final StatusValue value;
// status trigger
  @override
  final Trigger? valueTrigger;

  @override
  String toString() {
    return 'Status(name: $name, value: $value, valueTrigger: $valueTrigger)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueTrigger, valueTrigger) ||
                other.valueTrigger == valueTrigger));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, value, valueTrigger);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      __$$StatusImplCopyWithImpl<_$StatusImpl>(this, _$identity);
}

abstract class _Status implements Status {
  const factory _Status(
      {required final String name,
      required final StatusValue value,
      final Trigger? valueTrigger}) = _$StatusImpl;

  @override
  String get name;
  @override
  StatusValue get value;
  @override // status trigger
  Trigger? get valueTrigger;
  @override
  @JsonKey(ignore: true)
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Player {
  String get name => throw _privateConstructorUsedError;
  BuiltMap<String, Status> get statusMap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res, Player>;
  @useResult
  $Res call({String name, BuiltMap<String, Status> statusMap});
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res, $Val extends Player>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? statusMap = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      statusMap: null == statusMap
          ? _value.statusMap
          : statusMap // ignore: cast_nullable_to_non_nullable
              as BuiltMap<String, Status>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerImplCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$$PlayerImplCopyWith(
          _$PlayerImpl value, $Res Function(_$PlayerImpl) then) =
      __$$PlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, BuiltMap<String, Status> statusMap});
}

/// @nodoc
class __$$PlayerImplCopyWithImpl<$Res>
    extends _$PlayerCopyWithImpl<$Res, _$PlayerImpl>
    implements _$$PlayerImplCopyWith<$Res> {
  __$$PlayerImplCopyWithImpl(
      _$PlayerImpl _value, $Res Function(_$PlayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? statusMap = null,
  }) {
    return _then(_$PlayerImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      statusMap: null == statusMap
          ? _value.statusMap
          : statusMap // ignore: cast_nullable_to_non_nullable
              as BuiltMap<String, Status>,
    ));
  }
}

/// @nodoc

class _$PlayerImpl implements _Player {
  const _$PlayerImpl({required this.name, required this.statusMap});

  @override
  final String name;
  @override
  final BuiltMap<String, Status> statusMap;

  @override
  String toString() {
    return 'Player(name: $name, statusMap: $statusMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.statusMap, statusMap) ||
                other.statusMap == statusMap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, statusMap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      __$$PlayerImplCopyWithImpl<_$PlayerImpl>(this, _$identity);
}

abstract class _Player implements Player {
  const factory _Player(
      {required final String name,
      required final BuiltMap<String, Status> statusMap}) = _$PlayerImpl;

  @override
  String get name;
  @override
  BuiltMap<String, Status> get statusMap;
  @override
  @JsonKey(ignore: true)
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Action {
  String get status => throw _privateConstructorUsedError;
  Object get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, StatusValue value) setStatus,
    required TResult Function(String status, double value) addNumberStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status, StatusValue value)? setStatus,
    TResult? Function(String status, double value)? addNumberStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, StatusValue value)? setStatus,
    TResult Function(String status, double value)? addNumberStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetStatus value) setStatus,
    required TResult Function(_AddNumberStatus value) addNumberStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetStatus value)? setStatus,
    TResult? Function(_AddNumberStatus value)? addNumberStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetStatus value)? setStatus,
    TResult Function(_AddNumberStatus value)? addNumberStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActionCopyWith<Action> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionCopyWith<$Res> {
  factory $ActionCopyWith(Action value, $Res Function(Action) then) =
      _$ActionCopyWithImpl<$Res, Action>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class _$ActionCopyWithImpl<$Res, $Val extends Action>
    implements $ActionCopyWith<$Res> {
  _$ActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetStatusImplCopyWith<$Res> implements $ActionCopyWith<$Res> {
  factory _$$SetStatusImplCopyWith(
          _$SetStatusImpl value, $Res Function(_$SetStatusImpl) then) =
      __$$SetStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, StatusValue value});

  $StatusValueCopyWith<$Res> get value;
}

/// @nodoc
class __$$SetStatusImplCopyWithImpl<$Res>
    extends _$ActionCopyWithImpl<$Res, _$SetStatusImpl>
    implements _$$SetStatusImplCopyWith<$Res> {
  __$$SetStatusImplCopyWithImpl(
      _$SetStatusImpl _value, $Res Function(_$SetStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? value = null,
  }) {
    return _then(_$SetStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as StatusValue,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusValueCopyWith<$Res> get value {
    return $StatusValueCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$SetStatusImpl implements _SetStatus {
  const _$SetStatusImpl({required this.status, required this.value});

  @override
  final String status;
  @override
  final StatusValue value;

  @override
  String toString() {
    return 'Action.setStatus(status: $status, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetStatusImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetStatusImplCopyWith<_$SetStatusImpl> get copyWith =>
      __$$SetStatusImplCopyWithImpl<_$SetStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, StatusValue value) setStatus,
    required TResult Function(String status, double value) addNumberStatus,
  }) {
    return setStatus(status, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status, StatusValue value)? setStatus,
    TResult? Function(String status, double value)? addNumberStatus,
  }) {
    return setStatus?.call(status, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, StatusValue value)? setStatus,
    TResult Function(String status, double value)? addNumberStatus,
    required TResult orElse(),
  }) {
    if (setStatus != null) {
      return setStatus(status, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetStatus value) setStatus,
    required TResult Function(_AddNumberStatus value) addNumberStatus,
  }) {
    return setStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetStatus value)? setStatus,
    TResult? Function(_AddNumberStatus value)? addNumberStatus,
  }) {
    return setStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetStatus value)? setStatus,
    TResult Function(_AddNumberStatus value)? addNumberStatus,
    required TResult orElse(),
  }) {
    if (setStatus != null) {
      return setStatus(this);
    }
    return orElse();
  }
}

abstract class _SetStatus implements Action {
  const factory _SetStatus(
      {required final String status,
      required final StatusValue value}) = _$SetStatusImpl;

  @override
  String get status;
  @override
  StatusValue get value;
  @override
  @JsonKey(ignore: true)
  _$$SetStatusImplCopyWith<_$SetStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNumberStatusImplCopyWith<$Res>
    implements $ActionCopyWith<$Res> {
  factory _$$AddNumberStatusImplCopyWith(_$AddNumberStatusImpl value,
          $Res Function(_$AddNumberStatusImpl) then) =
      __$$AddNumberStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, double value});
}

/// @nodoc
class __$$AddNumberStatusImplCopyWithImpl<$Res>
    extends _$ActionCopyWithImpl<$Res, _$AddNumberStatusImpl>
    implements _$$AddNumberStatusImplCopyWith<$Res> {
  __$$AddNumberStatusImplCopyWithImpl(
      _$AddNumberStatusImpl _value, $Res Function(_$AddNumberStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? value = null,
  }) {
    return _then(_$AddNumberStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AddNumberStatusImpl implements _AddNumberStatus {
  const _$AddNumberStatusImpl({required this.status, required this.value});

  @override
  final String status;
  @override
  final double value;

  @override
  String toString() {
    return 'Action.addNumberStatus(status: $status, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNumberStatusImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNumberStatusImplCopyWith<_$AddNumberStatusImpl> get copyWith =>
      __$$AddNumberStatusImplCopyWithImpl<_$AddNumberStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, StatusValue value) setStatus,
    required TResult Function(String status, double value) addNumberStatus,
  }) {
    return addNumberStatus(status, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status, StatusValue value)? setStatus,
    TResult? Function(String status, double value)? addNumberStatus,
  }) {
    return addNumberStatus?.call(status, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, StatusValue value)? setStatus,
    TResult Function(String status, double value)? addNumberStatus,
    required TResult orElse(),
  }) {
    if (addNumberStatus != null) {
      return addNumberStatus(status, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetStatus value) setStatus,
    required TResult Function(_AddNumberStatus value) addNumberStatus,
  }) {
    return addNumberStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetStatus value)? setStatus,
    TResult? Function(_AddNumberStatus value)? addNumberStatus,
  }) {
    return addNumberStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetStatus value)? setStatus,
    TResult Function(_AddNumberStatus value)? addNumberStatus,
    required TResult orElse(),
  }) {
    if (addNumberStatus != null) {
      return addNumberStatus(this);
    }
    return orElse();
  }
}

abstract class _AddNumberStatus implements Action {
  const factory _AddNumberStatus(
      {required final String status,
      required final double value}) = _$AddNumberStatusImpl;

  @override
  String get status;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$AddNumberStatusImplCopyWith<_$AddNumberStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Trigger {
  Action get action => throw _privateConstructorUsedError;
  bool get executed => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String condition, Action action, bool executed) $default, {
    required TResult Function(Status targetStatus, Action action, bool executed)
        statusTrigger,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String condition, Action action, bool executed)?
        $default, {
    TResult? Function(Status targetStatus, Action action, bool executed)?
        statusTrigger,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String condition, Action action, bool executed)?
        $default, {
    TResult Function(Status targetStatus, Action action, bool executed)?
        statusTrigger,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Trigger value) $default, {
    required TResult Function(_StatusTrigger value) statusTrigger,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Trigger value)? $default, {
    TResult? Function(_StatusTrigger value)? statusTrigger,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Trigger value)? $default, {
    TResult Function(_StatusTrigger value)? statusTrigger,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TriggerCopyWith<Trigger> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriggerCopyWith<$Res> {
  factory $TriggerCopyWith(Trigger value, $Res Function(Trigger) then) =
      _$TriggerCopyWithImpl<$Res, Trigger>;
  @useResult
  $Res call({Action action, bool executed});

  $ActionCopyWith<$Res> get action;
}

/// @nodoc
class _$TriggerCopyWithImpl<$Res, $Val extends Trigger>
    implements $TriggerCopyWith<$Res> {
  _$TriggerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? executed = null,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action,
      executed: null == executed
          ? _value.executed
          : executed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionCopyWith<$Res> get action {
    return $ActionCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TriggerImplCopyWith<$Res> implements $TriggerCopyWith<$Res> {
  factory _$$TriggerImplCopyWith(
          _$TriggerImpl value, $Res Function(_$TriggerImpl) then) =
      __$$TriggerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String condition, Action action, bool executed});

  @override
  $ActionCopyWith<$Res> get action;
}

/// @nodoc
class __$$TriggerImplCopyWithImpl<$Res>
    extends _$TriggerCopyWithImpl<$Res, _$TriggerImpl>
    implements _$$TriggerImplCopyWith<$Res> {
  __$$TriggerImplCopyWithImpl(
      _$TriggerImpl _value, $Res Function(_$TriggerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? condition = null,
    Object? action = null,
    Object? executed = null,
  }) {
    return _then(_$TriggerImpl(
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action,
      executed: null == executed
          ? _value.executed
          : executed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TriggerImpl implements _Trigger {
  const _$TriggerImpl(
      {required this.condition, required this.action, required this.executed});

  @override
  final String condition;
  @override
  final Action action;
  @override
  final bool executed;

  @override
  String toString() {
    return 'Trigger(condition: $condition, action: $action, executed: $executed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TriggerImpl &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.executed, executed) ||
                other.executed == executed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, condition, action, executed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TriggerImplCopyWith<_$TriggerImpl> get copyWith =>
      __$$TriggerImplCopyWithImpl<_$TriggerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String condition, Action action, bool executed) $default, {
    required TResult Function(Status targetStatus, Action action, bool executed)
        statusTrigger,
  }) {
    return $default(condition, action, executed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String condition, Action action, bool executed)?
        $default, {
    TResult? Function(Status targetStatus, Action action, bool executed)?
        statusTrigger,
  }) {
    return $default?.call(condition, action, executed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String condition, Action action, bool executed)?
        $default, {
    TResult Function(Status targetStatus, Action action, bool executed)?
        statusTrigger,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(condition, action, executed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Trigger value) $default, {
    required TResult Function(_StatusTrigger value) statusTrigger,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Trigger value)? $default, {
    TResult? Function(_StatusTrigger value)? statusTrigger,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Trigger value)? $default, {
    TResult Function(_StatusTrigger value)? statusTrigger,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Trigger implements Trigger {
  const factory _Trigger(
      {required final String condition,
      required final Action action,
      required final bool executed}) = _$TriggerImpl;

  String get condition;
  @override
  Action get action;
  @override
  bool get executed;
  @override
  @JsonKey(ignore: true)
  _$$TriggerImplCopyWith<_$TriggerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusTriggerImplCopyWith<$Res>
    implements $TriggerCopyWith<$Res> {
  factory _$$StatusTriggerImplCopyWith(
          _$StatusTriggerImpl value, $Res Function(_$StatusTriggerImpl) then) =
      __$$StatusTriggerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status targetStatus, Action action, bool executed});

  $StatusCopyWith<$Res> get targetStatus;
  @override
  $ActionCopyWith<$Res> get action;
}

/// @nodoc
class __$$StatusTriggerImplCopyWithImpl<$Res>
    extends _$TriggerCopyWithImpl<$Res, _$StatusTriggerImpl>
    implements _$$StatusTriggerImplCopyWith<$Res> {
  __$$StatusTriggerImplCopyWithImpl(
      _$StatusTriggerImpl _value, $Res Function(_$StatusTriggerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetStatus = null,
    Object? action = null,
    Object? executed = null,
  }) {
    return _then(_$StatusTriggerImpl(
      targetStatus: null == targetStatus
          ? _value.targetStatus
          : targetStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action,
      executed: null == executed
          ? _value.executed
          : executed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get targetStatus {
    return $StatusCopyWith<$Res>(_value.targetStatus, (value) {
      return _then(_value.copyWith(targetStatus: value));
    });
  }
}

/// @nodoc

class _$StatusTriggerImpl implements _StatusTrigger {
  const _$StatusTriggerImpl(
      {required this.targetStatus,
      required this.action,
      required this.executed});

  @override
  final Status targetStatus;
// on original status is updated to target status
  @override
  final Action action;
  @override
  final bool executed;

  @override
  String toString() {
    return 'Trigger.statusTrigger(targetStatus: $targetStatus, action: $action, executed: $executed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusTriggerImpl &&
            (identical(other.targetStatus, targetStatus) ||
                other.targetStatus == targetStatus) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.executed, executed) ||
                other.executed == executed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, targetStatus, action, executed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusTriggerImplCopyWith<_$StatusTriggerImpl> get copyWith =>
      __$$StatusTriggerImplCopyWithImpl<_$StatusTriggerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String condition, Action action, bool executed) $default, {
    required TResult Function(Status targetStatus, Action action, bool executed)
        statusTrigger,
  }) {
    return statusTrigger(targetStatus, action, executed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String condition, Action action, bool executed)?
        $default, {
    TResult? Function(Status targetStatus, Action action, bool executed)?
        statusTrigger,
  }) {
    return statusTrigger?.call(targetStatus, action, executed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String condition, Action action, bool executed)?
        $default, {
    TResult Function(Status targetStatus, Action action, bool executed)?
        statusTrigger,
    required TResult orElse(),
  }) {
    if (statusTrigger != null) {
      return statusTrigger(targetStatus, action, executed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Trigger value) $default, {
    required TResult Function(_StatusTrigger value) statusTrigger,
  }) {
    return statusTrigger(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Trigger value)? $default, {
    TResult? Function(_StatusTrigger value)? statusTrigger,
  }) {
    return statusTrigger?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Trigger value)? $default, {
    TResult Function(_StatusTrigger value)? statusTrigger,
    required TResult orElse(),
  }) {
    if (statusTrigger != null) {
      return statusTrigger(this);
    }
    return orElse();
  }
}

abstract class _StatusTrigger implements Trigger {
  const factory _StatusTrigger(
      {required final Status targetStatus,
      required final Action action,
      required final bool executed}) = _$StatusTriggerImpl;

  Status get targetStatus;
  @override // on original status is updated to target status
  Action get action;
  @override
  bool get executed;
  @override
  @JsonKey(ignore: true)
  _$$StatusTriggerImplCopyWith<_$StatusTriggerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Context {
// spec of the current story
  ST2CharacterModel get character =>
      throw _privateConstructorUsedError; // the context of the current playing message history
  BuiltList<DialogMessage> get messageHistory =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContextCopyWith<Context> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextCopyWith<$Res> {
  factory $ContextCopyWith(Context value, $Res Function(Context) then) =
      _$ContextCopyWithImpl<$Res, Context>;
  @useResult
  $Res call(
      {ST2CharacterModel character, BuiltList<DialogMessage> messageHistory});

  $ST2CharacterModelCopyWith<$Res> get character;
}

/// @nodoc
class _$ContextCopyWithImpl<$Res, $Val extends Context>
    implements $ContextCopyWith<$Res> {
  _$ContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
    Object? messageHistory = null,
  }) {
    return _then(_value.copyWith(
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as ST2CharacterModel,
      messageHistory: null == messageHistory
          ? _value.messageHistory
          : messageHistory // ignore: cast_nullable_to_non_nullable
              as BuiltList<DialogMessage>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ST2CharacterModelCopyWith<$Res> get character {
    return $ST2CharacterModelCopyWith<$Res>(_value.character, (value) {
      return _then(_value.copyWith(character: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContextImplCopyWith<$Res> implements $ContextCopyWith<$Res> {
  factory _$$ContextImplCopyWith(
          _$ContextImpl value, $Res Function(_$ContextImpl) then) =
      __$$ContextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ST2CharacterModel character, BuiltList<DialogMessage> messageHistory});

  @override
  $ST2CharacterModelCopyWith<$Res> get character;
}

/// @nodoc
class __$$ContextImplCopyWithImpl<$Res>
    extends _$ContextCopyWithImpl<$Res, _$ContextImpl>
    implements _$$ContextImplCopyWith<$Res> {
  __$$ContextImplCopyWithImpl(
      _$ContextImpl _value, $Res Function(_$ContextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
    Object? messageHistory = null,
  }) {
    return _then(_$ContextImpl(
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as ST2CharacterModel,
      messageHistory: null == messageHistory
          ? _value.messageHistory
          : messageHistory // ignore: cast_nullable_to_non_nullable
              as BuiltList<DialogMessage>,
    ));
  }
}

/// @nodoc

class _$ContextImpl implements _Context {
  const _$ContextImpl({required this.character, required this.messageHistory});

// spec of the current story
  @override
  final ST2CharacterModel character;
// the context of the current playing message history
  @override
  final BuiltList<DialogMessage> messageHistory;

  @override
  String toString() {
    return 'Context(character: $character, messageHistory: $messageHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContextImpl &&
            (identical(other.character, character) ||
                other.character == character) &&
            const DeepCollectionEquality()
                .equals(other.messageHistory, messageHistory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character,
      const DeepCollectionEquality().hash(messageHistory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContextImplCopyWith<_$ContextImpl> get copyWith =>
      __$$ContextImplCopyWithImpl<_$ContextImpl>(this, _$identity);
}

abstract class _Context implements Context {
  const factory _Context(
      {required final ST2CharacterModel character,
      required final BuiltList<DialogMessage> messageHistory}) = _$ContextImpl;

  @override // spec of the current story
  ST2CharacterModel get character;
  @override // the context of the current playing message history
  BuiltList<DialogMessage> get messageHistory;
  @override
  @JsonKey(ignore: true)
  _$$ContextImplCopyWith<_$ContextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Runtime {
  Player get player => throw _privateConstructorUsedError;
  BuiltList<Trigger> get triggers => throw _privateConstructorUsedError;
  Context get context => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RuntimeCopyWith<Runtime> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuntimeCopyWith<$Res> {
  factory $RuntimeCopyWith(Runtime value, $Res Function(Runtime) then) =
      _$RuntimeCopyWithImpl<$Res, Runtime>;
  @useResult
  $Res call({Player player, BuiltList<Trigger> triggers, Context context});

  $PlayerCopyWith<$Res> get player;
  $ContextCopyWith<$Res> get context;
}

/// @nodoc
class _$RuntimeCopyWithImpl<$Res, $Val extends Runtime>
    implements $RuntimeCopyWith<$Res> {
  _$RuntimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? triggers = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      triggers: null == triggers
          ? _value.triggers
          : triggers // ignore: cast_nullable_to_non_nullable
              as BuiltList<Trigger>,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res> get player {
    return $PlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContextCopyWith<$Res> get context {
    return $ContextCopyWith<$Res>(_value.context, (value) {
      return _then(_value.copyWith(context: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RuntimeImplCopyWith<$Res> implements $RuntimeCopyWith<$Res> {
  factory _$$RuntimeImplCopyWith(
          _$RuntimeImpl value, $Res Function(_$RuntimeImpl) then) =
      __$$RuntimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Player player, BuiltList<Trigger> triggers, Context context});

  @override
  $PlayerCopyWith<$Res> get player;
  @override
  $ContextCopyWith<$Res> get context;
}

/// @nodoc
class __$$RuntimeImplCopyWithImpl<$Res>
    extends _$RuntimeCopyWithImpl<$Res, _$RuntimeImpl>
    implements _$$RuntimeImplCopyWith<$Res> {
  __$$RuntimeImplCopyWithImpl(
      _$RuntimeImpl _value, $Res Function(_$RuntimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? triggers = null,
    Object? context = null,
  }) {
    return _then(_$RuntimeImpl(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      triggers: null == triggers
          ? _value.triggers
          : triggers // ignore: cast_nullable_to_non_nullable
              as BuiltList<Trigger>,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context,
    ));
  }
}

/// @nodoc

class _$RuntimeImpl implements _Runtime {
  const _$RuntimeImpl(
      {required this.player, required this.triggers, required this.context});

  @override
  final Player player;
  @override
  final BuiltList<Trigger> triggers;
  @override
  final Context context;

  @override
  String toString() {
    return 'Runtime(player: $player, triggers: $triggers, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RuntimeImpl &&
            (identical(other.player, player) || other.player == player) &&
            const DeepCollectionEquality().equals(other.triggers, triggers) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player,
      const DeepCollectionEquality().hash(triggers), context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RuntimeImplCopyWith<_$RuntimeImpl> get copyWith =>
      __$$RuntimeImplCopyWithImpl<_$RuntimeImpl>(this, _$identity);
}

abstract class _Runtime implements Runtime {
  const factory _Runtime(
      {required final Player player,
      required final BuiltList<Trigger> triggers,
      required final Context context}) = _$RuntimeImpl;

  @override
  Player get player;
  @override
  BuiltList<Trigger> get triggers;
  @override
  Context get context;
  @override
  @JsonKey(ignore: true)
  _$$RuntimeImplCopyWith<_$RuntimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
