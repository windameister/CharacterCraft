// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'st2extensions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ST2Extensions _$ST2ExtensionsFromJson(Map<String, dynamic> json) {
  return _ST2Extensions.fromJson(json);
}

/// @nodoc
mixin _$ST2Extensions {
  @TalkativenessConverter()
  double get talkativeness =>
      throw _privateConstructorUsedError; // required bool fav,
  String get world => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ST2ExtensionsCopyWith<ST2Extensions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ST2ExtensionsCopyWith<$Res> {
  factory $ST2ExtensionsCopyWith(
          ST2Extensions value, $Res Function(ST2Extensions) then) =
      _$ST2ExtensionsCopyWithImpl<$Res, ST2Extensions>;
  @useResult
  $Res call({@TalkativenessConverter() double talkativeness, String world});
}

/// @nodoc
class _$ST2ExtensionsCopyWithImpl<$Res, $Val extends ST2Extensions>
    implements $ST2ExtensionsCopyWith<$Res> {
  _$ST2ExtensionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? talkativeness = null,
    Object? world = null,
  }) {
    return _then(_value.copyWith(
      talkativeness: null == talkativeness
          ? _value.talkativeness
          : talkativeness // ignore: cast_nullable_to_non_nullable
              as double,
      world: null == world
          ? _value.world
          : world // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ST2ExtensionsImplCopyWith<$Res>
    implements $ST2ExtensionsCopyWith<$Res> {
  factory _$$ST2ExtensionsImplCopyWith(
          _$ST2ExtensionsImpl value, $Res Function(_$ST2ExtensionsImpl) then) =
      __$$ST2ExtensionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@TalkativenessConverter() double talkativeness, String world});
}

/// @nodoc
class __$$ST2ExtensionsImplCopyWithImpl<$Res>
    extends _$ST2ExtensionsCopyWithImpl<$Res, _$ST2ExtensionsImpl>
    implements _$$ST2ExtensionsImplCopyWith<$Res> {
  __$$ST2ExtensionsImplCopyWithImpl(
      _$ST2ExtensionsImpl _value, $Res Function(_$ST2ExtensionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? talkativeness = null,
    Object? world = null,
  }) {
    return _then(_$ST2ExtensionsImpl(
      talkativeness: null == talkativeness
          ? _value.talkativeness
          : talkativeness // ignore: cast_nullable_to_non_nullable
              as double,
      world: null == world
          ? _value.world
          : world // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ST2ExtensionsImpl implements _ST2Extensions {
  const _$ST2ExtensionsImpl(
      {@TalkativenessConverter() this.talkativeness = 0.5, this.world = ''});

  factory _$ST2ExtensionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ST2ExtensionsImplFromJson(json);

  @override
  @JsonKey()
  @TalkativenessConverter()
  final double talkativeness;
// required bool fav,
  @override
  @JsonKey()
  final String world;

  @override
  String toString() {
    return 'ST2Extensions(talkativeness: $talkativeness, world: $world)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ST2ExtensionsImpl &&
            (identical(other.talkativeness, talkativeness) ||
                other.talkativeness == talkativeness) &&
            (identical(other.world, world) || other.world == world));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, talkativeness, world);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ST2ExtensionsImplCopyWith<_$ST2ExtensionsImpl> get copyWith =>
      __$$ST2ExtensionsImplCopyWithImpl<_$ST2ExtensionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ST2ExtensionsImplToJson(
      this,
    );
  }
}

abstract class _ST2Extensions implements ST2Extensions {
  const factory _ST2Extensions(
      {@TalkativenessConverter() final double talkativeness,
      final String world}) = _$ST2ExtensionsImpl;

  factory _ST2Extensions.fromJson(Map<String, dynamic> json) =
      _$ST2ExtensionsImpl.fromJson;

  @override
  @TalkativenessConverter()
  double get talkativeness;
  @override // required bool fav,
  String get world;
  @override
  @JsonKey(ignore: true)
  _$$ST2ExtensionsImplCopyWith<_$ST2ExtensionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
