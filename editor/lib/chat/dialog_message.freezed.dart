// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dialog_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DialogMessage _$DialogMessageFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _DialogMessage.fromJson(json);
    case 'waiting':
      return _DialogMessageWaiting.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'DialogMessage',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$DialogMessage {
  String get message => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message, String role) $default, {
    required TResult Function(String message, String role) waiting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String message, String role)? $default, {
    TResult? Function(String message, String role)? waiting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message, String role)? $default, {
    TResult Function(String message, String role)? waiting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DialogMessage value) $default, {
    required TResult Function(_DialogMessageWaiting value) waiting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DialogMessage value)? $default, {
    TResult? Function(_DialogMessageWaiting value)? waiting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DialogMessage value)? $default, {
    TResult Function(_DialogMessageWaiting value)? waiting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DialogMessageCopyWith<DialogMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogMessageCopyWith<$Res> {
  factory $DialogMessageCopyWith(
          DialogMessage value, $Res Function(DialogMessage) then) =
      _$DialogMessageCopyWithImpl<$Res, DialogMessage>;
  @useResult
  $Res call({String message, String role});
}

/// @nodoc
class _$DialogMessageCopyWithImpl<$Res, $Val extends DialogMessage>
    implements $DialogMessageCopyWith<$Res> {
  _$DialogMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DialogMessageImplCopyWith<$Res>
    implements $DialogMessageCopyWith<$Res> {
  factory _$$DialogMessageImplCopyWith(
          _$DialogMessageImpl value, $Res Function(_$DialogMessageImpl) then) =
      __$$DialogMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String role});
}

/// @nodoc
class __$$DialogMessageImplCopyWithImpl<$Res>
    extends _$DialogMessageCopyWithImpl<$Res, _$DialogMessageImpl>
    implements _$$DialogMessageImplCopyWith<$Res> {
  __$$DialogMessageImplCopyWithImpl(
      _$DialogMessageImpl _value, $Res Function(_$DialogMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? role = null,
  }) {
    return _then(_$DialogMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DialogMessageImpl extends _DialogMessage {
  const _$DialogMessageImpl(
      {required this.message, required this.role, final String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$DialogMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$DialogMessageImplFromJson(json);

  @override
  final String message;
  @override
  final String role;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DialogMessage(message: $message, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogMessageImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogMessageImplCopyWith<_$DialogMessageImpl> get copyWith =>
      __$$DialogMessageImplCopyWithImpl<_$DialogMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message, String role) $default, {
    required TResult Function(String message, String role) waiting,
  }) {
    return $default(message, role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String message, String role)? $default, {
    TResult? Function(String message, String role)? waiting,
  }) {
    return $default?.call(message, role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message, String role)? $default, {
    TResult Function(String message, String role)? waiting,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message, role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DialogMessage value) $default, {
    required TResult Function(_DialogMessageWaiting value) waiting,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DialogMessage value)? $default, {
    TResult? Function(_DialogMessageWaiting value)? waiting,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DialogMessage value)? $default, {
    TResult Function(_DialogMessageWaiting value)? waiting,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DialogMessageImplToJson(
      this,
    );
  }
}

abstract class _DialogMessage extends DialogMessage {
  const factory _DialogMessage(
      {required final String message,
      required final String role}) = _$DialogMessageImpl;
  const _DialogMessage._() : super._();

  factory _DialogMessage.fromJson(Map<String, dynamic> json) =
      _$DialogMessageImpl.fromJson;

  @override
  String get message;
  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$DialogMessageImplCopyWith<_$DialogMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DialogMessageWaitingImplCopyWith<$Res>
    implements $DialogMessageCopyWith<$Res> {
  factory _$$DialogMessageWaitingImplCopyWith(_$DialogMessageWaitingImpl value,
          $Res Function(_$DialogMessageWaitingImpl) then) =
      __$$DialogMessageWaitingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String role});
}

/// @nodoc
class __$$DialogMessageWaitingImplCopyWithImpl<$Res>
    extends _$DialogMessageCopyWithImpl<$Res, _$DialogMessageWaitingImpl>
    implements _$$DialogMessageWaitingImplCopyWith<$Res> {
  __$$DialogMessageWaitingImplCopyWithImpl(_$DialogMessageWaitingImpl _value,
      $Res Function(_$DialogMessageWaitingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? role = null,
  }) {
    return _then(_$DialogMessageWaitingImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DialogMessageWaitingImpl extends _DialogMessageWaiting {
  const _$DialogMessageWaitingImpl(
      {required this.message, required this.role, final String? $type})
      : $type = $type ?? 'waiting',
        super._();

  factory _$DialogMessageWaitingImpl.fromJson(Map<String, dynamic> json) =>
      _$$DialogMessageWaitingImplFromJson(json);

  @override
  final String message;
  @override
  final String role;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DialogMessage.waiting(message: $message, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogMessageWaitingImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogMessageWaitingImplCopyWith<_$DialogMessageWaitingImpl>
      get copyWith =>
          __$$DialogMessageWaitingImplCopyWithImpl<_$DialogMessageWaitingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message, String role) $default, {
    required TResult Function(String message, String role) waiting,
  }) {
    return waiting(message, role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String message, String role)? $default, {
    TResult? Function(String message, String role)? waiting,
  }) {
    return waiting?.call(message, role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message, String role)? $default, {
    TResult Function(String message, String role)? waiting,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(message, role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DialogMessage value) $default, {
    required TResult Function(_DialogMessageWaiting value) waiting,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DialogMessage value)? $default, {
    TResult? Function(_DialogMessageWaiting value)? waiting,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DialogMessage value)? $default, {
    TResult Function(_DialogMessageWaiting value)? waiting,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DialogMessageWaitingImplToJson(
      this,
    );
  }
}

abstract class _DialogMessageWaiting extends DialogMessage {
  const factory _DialogMessageWaiting(
      {required final String message,
      required final String role}) = _$DialogMessageWaitingImpl;
  const _DialogMessageWaiting._() : super._();

  factory _DialogMessageWaiting.fromJson(Map<String, dynamic> json) =
      _$DialogMessageWaitingImpl.fromJson;

  @override
  String get message;
  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$DialogMessageWaitingImplCopyWith<_$DialogMessageWaitingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MessageHistory _$MessageHistoryFromJson(Map<String, dynamic> json) {
  return _MessageHistory.fromJson(json);
}

/// @nodoc
mixin _$MessageHistory {
  List<DialogMessage> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageHistoryCopyWith<MessageHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageHistoryCopyWith<$Res> {
  factory $MessageHistoryCopyWith(
          MessageHistory value, $Res Function(MessageHistory) then) =
      _$MessageHistoryCopyWithImpl<$Res, MessageHistory>;
  @useResult
  $Res call({List<DialogMessage> messages});
}

/// @nodoc
class _$MessageHistoryCopyWithImpl<$Res, $Val extends MessageHistory>
    implements $MessageHistoryCopyWith<$Res> {
  _$MessageHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<DialogMessage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageHistoryImplCopyWith<$Res>
    implements $MessageHistoryCopyWith<$Res> {
  factory _$$MessageHistoryImplCopyWith(_$MessageHistoryImpl value,
          $Res Function(_$MessageHistoryImpl) then) =
      __$$MessageHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DialogMessage> messages});
}

/// @nodoc
class __$$MessageHistoryImplCopyWithImpl<$Res>
    extends _$MessageHistoryCopyWithImpl<$Res, _$MessageHistoryImpl>
    implements _$$MessageHistoryImplCopyWith<$Res> {
  __$$MessageHistoryImplCopyWithImpl(
      _$MessageHistoryImpl _value, $Res Function(_$MessageHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$MessageHistoryImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<DialogMessage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageHistoryImpl extends _MessageHistory {
  const _$MessageHistoryImpl({required final List<DialogMessage> messages})
      : _messages = messages,
        super._();

  factory _$MessageHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageHistoryImplFromJson(json);

  final List<DialogMessage> _messages;
  @override
  List<DialogMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'MessageHistory(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageHistoryImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageHistoryImplCopyWith<_$MessageHistoryImpl> get copyWith =>
      __$$MessageHistoryImplCopyWithImpl<_$MessageHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageHistoryImplToJson(
      this,
    );
  }
}

abstract class _MessageHistory extends MessageHistory {
  const factory _MessageHistory({required final List<DialogMessage> messages}) =
      _$MessageHistoryImpl;
  const _MessageHistory._() : super._();

  factory _MessageHistory.fromJson(Map<String, dynamic> json) =
      _$MessageHistoryImpl.fromJson;

  @override
  List<DialogMessage> get messages;
  @override
  @JsonKey(ignore: true)
  _$$MessageHistoryImplCopyWith<_$MessageHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
