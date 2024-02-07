// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'st2spec.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ST2Spec _$ST2SpecFromJson(Map<String, dynamic> json) {
  return _ST2Spec.fromJson(json);
}

/// @nodoc
mixin _$ST2Spec {
  @JsonKey(defaultValue: ST2Spec.kSpec)
  String get spec => throw _privateConstructorUsedError;
  @JsonKey(name: 'spec_version', defaultValue: ST2Spec.kSpecVersion)
  String get specVersion => throw _privateConstructorUsedError;
  @ST2DataConverter()
  ST2Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ST2SpecCopyWith<ST2Spec> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ST2SpecCopyWith<$Res> {
  factory $ST2SpecCopyWith(ST2Spec value, $Res Function(ST2Spec) then) =
      _$ST2SpecCopyWithImpl<$Res, ST2Spec>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: ST2Spec.kSpec) String spec,
      @JsonKey(name: 'spec_version', defaultValue: ST2Spec.kSpecVersion)
      String specVersion,
      @ST2DataConverter() ST2Data data});

  $ST2DataCopyWith<$Res> get data;
}

/// @nodoc
class _$ST2SpecCopyWithImpl<$Res, $Val extends ST2Spec>
    implements $ST2SpecCopyWith<$Res> {
  _$ST2SpecCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spec = null,
    Object? specVersion = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      spec: null == spec
          ? _value.spec
          : spec // ignore: cast_nullable_to_non_nullable
              as String,
      specVersion: null == specVersion
          ? _value.specVersion
          : specVersion // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ST2Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ST2DataCopyWith<$Res> get data {
    return $ST2DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ST2SpecImplCopyWith<$Res> implements $ST2SpecCopyWith<$Res> {
  factory _$$ST2SpecImplCopyWith(
          _$ST2SpecImpl value, $Res Function(_$ST2SpecImpl) then) =
      __$$ST2SpecImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: ST2Spec.kSpec) String spec,
      @JsonKey(name: 'spec_version', defaultValue: ST2Spec.kSpecVersion)
      String specVersion,
      @ST2DataConverter() ST2Data data});

  @override
  $ST2DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ST2SpecImplCopyWithImpl<$Res>
    extends _$ST2SpecCopyWithImpl<$Res, _$ST2SpecImpl>
    implements _$$ST2SpecImplCopyWith<$Res> {
  __$$ST2SpecImplCopyWithImpl(
      _$ST2SpecImpl _value, $Res Function(_$ST2SpecImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spec = null,
    Object? specVersion = null,
    Object? data = null,
  }) {
    return _then(_$ST2SpecImpl(
      spec: null == spec
          ? _value.spec
          : spec // ignore: cast_nullable_to_non_nullable
              as String,
      specVersion: null == specVersion
          ? _value.specVersion
          : specVersion // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ST2Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ST2SpecImpl extends _ST2Spec {
  const _$ST2SpecImpl(
      {@JsonKey(defaultValue: ST2Spec.kSpec) required this.spec,
      @JsonKey(name: 'spec_version', defaultValue: ST2Spec.kSpecVersion)
      required this.specVersion,
      @ST2DataConverter() required this.data})
      : super._();

  factory _$ST2SpecImpl.fromJson(Map<String, dynamic> json) =>
      _$$ST2SpecImplFromJson(json);

  @override
  @JsonKey(defaultValue: ST2Spec.kSpec)
  final String spec;
  @override
  @JsonKey(name: 'spec_version', defaultValue: ST2Spec.kSpecVersion)
  final String specVersion;
  @override
  @ST2DataConverter()
  final ST2Data data;

  @override
  String toString() {
    return 'ST2Spec(spec: $spec, specVersion: $specVersion, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ST2SpecImpl &&
            (identical(other.spec, spec) || other.spec == spec) &&
            (identical(other.specVersion, specVersion) ||
                other.specVersion == specVersion) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, spec, specVersion, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ST2SpecImplCopyWith<_$ST2SpecImpl> get copyWith =>
      __$$ST2SpecImplCopyWithImpl<_$ST2SpecImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ST2SpecImplToJson(
      this,
    );
  }
}

abstract class _ST2Spec extends ST2Spec {
  const factory _ST2Spec(
      {@JsonKey(defaultValue: ST2Spec.kSpec) required final String spec,
      @JsonKey(name: 'spec_version', defaultValue: ST2Spec.kSpecVersion)
      required final String specVersion,
      @ST2DataConverter() required final ST2Data data}) = _$ST2SpecImpl;
  const _ST2Spec._() : super._();

  factory _ST2Spec.fromJson(Map<String, dynamic> json) = _$ST2SpecImpl.fromJson;

  @override
  @JsonKey(defaultValue: ST2Spec.kSpec)
  String get spec;
  @override
  @JsonKey(name: 'spec_version', defaultValue: ST2Spec.kSpecVersion)
  String get specVersion;
  @override
  @ST2DataConverter()
  ST2Data get data;
  @override
  @JsonKey(ignore: true)
  _$$ST2SpecImplCopyWith<_$ST2SpecImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
