// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'st2characterbook.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ST2CharacterBook _$ST2CharacterBookFromJson(Map<String, dynamic> json) {
  return _ST2CharacterBook.fromJson(json);
}

/// @nodoc
mixin _$ST2CharacterBook {
  String get description => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'recursive_scanning')
  bool get recursiveScanning => throw _privateConstructorUsedError;
  @JsonKey(name: 'scan_depth')
  int get scanDepth => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_budget')
  int get tokenBudget => throw _privateConstructorUsedError;
  @JsonKey(name: 'entries')
  @ST2CharacterBookEntryConverter()
  List<ST2CharacterBookEntry> get entries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ST2CharacterBookCopyWith<ST2CharacterBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ST2CharacterBookCopyWith<$Res> {
  factory $ST2CharacterBookCopyWith(
          ST2CharacterBook value, $Res Function(ST2CharacterBook) then) =
      _$ST2CharacterBookCopyWithImpl<$Res, ST2CharacterBook>;
  @useResult
  $Res call(
      {String description,
      String name,
      @JsonKey(name: 'recursive_scanning') bool recursiveScanning,
      @JsonKey(name: 'scan_depth') int scanDepth,
      @JsonKey(name: 'token_budget') int tokenBudget,
      @JsonKey(name: 'entries')
      @ST2CharacterBookEntryConverter()
      List<ST2CharacterBookEntry> entries});
}

/// @nodoc
class _$ST2CharacterBookCopyWithImpl<$Res, $Val extends ST2CharacterBook>
    implements $ST2CharacterBookCopyWith<$Res> {
  _$ST2CharacterBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? name = null,
    Object? recursiveScanning = null,
    Object? scanDepth = null,
    Object? tokenBudget = null,
    Object? entries = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      recursiveScanning: null == recursiveScanning
          ? _value.recursiveScanning
          : recursiveScanning // ignore: cast_nullable_to_non_nullable
              as bool,
      scanDepth: null == scanDepth
          ? _value.scanDepth
          : scanDepth // ignore: cast_nullable_to_non_nullable
              as int,
      tokenBudget: null == tokenBudget
          ? _value.tokenBudget
          : tokenBudget // ignore: cast_nullable_to_non_nullable
              as int,
      entries: null == entries
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<ST2CharacterBookEntry>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ST2CharacterBookImplCopyWith<$Res>
    implements $ST2CharacterBookCopyWith<$Res> {
  factory _$$ST2CharacterBookImplCopyWith(_$ST2CharacterBookImpl value,
          $Res Function(_$ST2CharacterBookImpl) then) =
      __$$ST2CharacterBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      String name,
      @JsonKey(name: 'recursive_scanning') bool recursiveScanning,
      @JsonKey(name: 'scan_depth') int scanDepth,
      @JsonKey(name: 'token_budget') int tokenBudget,
      @JsonKey(name: 'entries')
      @ST2CharacterBookEntryConverter()
      List<ST2CharacterBookEntry> entries});
}

/// @nodoc
class __$$ST2CharacterBookImplCopyWithImpl<$Res>
    extends _$ST2CharacterBookCopyWithImpl<$Res, _$ST2CharacterBookImpl>
    implements _$$ST2CharacterBookImplCopyWith<$Res> {
  __$$ST2CharacterBookImplCopyWithImpl(_$ST2CharacterBookImpl _value,
      $Res Function(_$ST2CharacterBookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? name = null,
    Object? recursiveScanning = null,
    Object? scanDepth = null,
    Object? tokenBudget = null,
    Object? entries = null,
  }) {
    return _then(_$ST2CharacterBookImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      recursiveScanning: null == recursiveScanning
          ? _value.recursiveScanning
          : recursiveScanning // ignore: cast_nullable_to_non_nullable
              as bool,
      scanDepth: null == scanDepth
          ? _value.scanDepth
          : scanDepth // ignore: cast_nullable_to_non_nullable
              as int,
      tokenBudget: null == tokenBudget
          ? _value.tokenBudget
          : tokenBudget // ignore: cast_nullable_to_non_nullable
              as int,
      entries: null == entries
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<ST2CharacterBookEntry>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ST2CharacterBookImpl extends _ST2CharacterBook {
  const _$ST2CharacterBookImpl(
      {this.description = '',
      this.name = '',
      @JsonKey(name: 'recursive_scanning') this.recursiveScanning = false,
      @JsonKey(name: 'scan_depth') this.scanDepth = 50,
      @JsonKey(name: 'token_budget') this.tokenBudget = 500,
      @JsonKey(name: 'entries')
      @ST2CharacterBookEntryConverter()
      final List<ST2CharacterBookEntry> entries = const []})
      : _entries = entries,
        super._();

  factory _$ST2CharacterBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$ST2CharacterBookImplFromJson(json);

  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(name: 'recursive_scanning')
  final bool recursiveScanning;
  @override
  @JsonKey(name: 'scan_depth')
  final int scanDepth;
  @override
  @JsonKey(name: 'token_budget')
  final int tokenBudget;
  final List<ST2CharacterBookEntry> _entries;
  @override
  @JsonKey(name: 'entries')
  @ST2CharacterBookEntryConverter()
  List<ST2CharacterBookEntry> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  @override
  String toString() {
    return 'ST2CharacterBook(description: $description, name: $name, recursiveScanning: $recursiveScanning, scanDepth: $scanDepth, tokenBudget: $tokenBudget, entries: $entries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ST2CharacterBookImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.recursiveScanning, recursiveScanning) ||
                other.recursiveScanning == recursiveScanning) &&
            (identical(other.scanDepth, scanDepth) ||
                other.scanDepth == scanDepth) &&
            (identical(other.tokenBudget, tokenBudget) ||
                other.tokenBudget == tokenBudget) &&
            const DeepCollectionEquality().equals(other._entries, _entries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      name,
      recursiveScanning,
      scanDepth,
      tokenBudget,
      const DeepCollectionEquality().hash(_entries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ST2CharacterBookImplCopyWith<_$ST2CharacterBookImpl> get copyWith =>
      __$$ST2CharacterBookImplCopyWithImpl<_$ST2CharacterBookImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ST2CharacterBookImplToJson(
      this,
    );
  }
}

abstract class _ST2CharacterBook extends ST2CharacterBook {
  const factory _ST2CharacterBook(
      {final String description,
      final String name,
      @JsonKey(name: 'recursive_scanning') final bool recursiveScanning,
      @JsonKey(name: 'scan_depth') final int scanDepth,
      @JsonKey(name: 'token_budget') final int tokenBudget,
      @JsonKey(name: 'entries')
      @ST2CharacterBookEntryConverter()
      final List<ST2CharacterBookEntry> entries}) = _$ST2CharacterBookImpl;
  const _ST2CharacterBook._() : super._();

  factory _ST2CharacterBook.fromJson(Map<String, dynamic> json) =
      _$ST2CharacterBookImpl.fromJson;

  @override
  String get description;
  @override
  String get name;
  @override
  @JsonKey(name: 'recursive_scanning')
  bool get recursiveScanning;
  @override
  @JsonKey(name: 'scan_depth')
  int get scanDepth;
  @override
  @JsonKey(name: 'token_budget')
  int get tokenBudget;
  @override
  @JsonKey(name: 'entries')
  @ST2CharacterBookEntryConverter()
  List<ST2CharacterBookEntry> get entries;
  @override
  @JsonKey(ignore: true)
  _$$ST2CharacterBookImplCopyWith<_$ST2CharacterBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
