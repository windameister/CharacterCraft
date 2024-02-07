// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'directory_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DirectoryItem {
  FileSystemEntity get entity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName, FileSystemEntity entity) item,
    required TResult Function(FileSystemEntity entity, ST2Spec spec) st2card,
    required TResult Function(FileSystemEntity entity) parent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName, FileSystemEntity entity)? item,
    TResult? Function(FileSystemEntity entity, ST2Spec spec)? st2card,
    TResult? Function(FileSystemEntity entity)? parent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName, FileSystemEntity entity)? item,
    TResult Function(FileSystemEntity entity, ST2Spec spec)? st2card,
    TResult Function(FileSystemEntity entity)? parent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DirectoryItem value) item,
    required TResult Function(_ST2Card value) st2card,
    required TResult Function(_ParentItem value) parent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DirectoryItem value)? item,
    TResult? Function(_ST2Card value)? st2card,
    TResult? Function(_ParentItem value)? parent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DirectoryItem value)? item,
    TResult Function(_ST2Card value)? st2card,
    TResult Function(_ParentItem value)? parent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DirectoryItemCopyWith<DirectoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectoryItemCopyWith<$Res> {
  factory $DirectoryItemCopyWith(
          DirectoryItem value, $Res Function(DirectoryItem) then) =
      _$DirectoryItemCopyWithImpl<$Res, DirectoryItem>;
  @useResult
  $Res call({FileSystemEntity entity});
}

/// @nodoc
class _$DirectoryItemCopyWithImpl<$Res, $Val extends DirectoryItem>
    implements $DirectoryItemCopyWith<$Res> {
  _$DirectoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_value.copyWith(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as FileSystemEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DirectoryItemImplCopyWith<$Res>
    implements $DirectoryItemCopyWith<$Res> {
  factory _$$DirectoryItemImplCopyWith(
          _$DirectoryItemImpl value, $Res Function(_$DirectoryItemImpl) then) =
      __$$DirectoryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String displayName, FileSystemEntity entity});
}

/// @nodoc
class __$$DirectoryItemImplCopyWithImpl<$Res>
    extends _$DirectoryItemCopyWithImpl<$Res, _$DirectoryItemImpl>
    implements _$$DirectoryItemImplCopyWith<$Res> {
  __$$DirectoryItemImplCopyWithImpl(
      _$DirectoryItemImpl _value, $Res Function(_$DirectoryItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? entity = null,
  }) {
    return _then(_$DirectoryItemImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as FileSystemEntity,
    ));
  }
}

/// @nodoc

class _$DirectoryItemImpl extends _DirectoryItem {
  const _$DirectoryItemImpl({required this.displayName, required this.entity})
      : super._();

  @override
  final String displayName;
  @override
  final FileSystemEntity entity;

  @override
  String toString() {
    return 'DirectoryItem.item(displayName: $displayName, entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectoryItemImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, displayName, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectoryItemImplCopyWith<_$DirectoryItemImpl> get copyWith =>
      __$$DirectoryItemImplCopyWithImpl<_$DirectoryItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName, FileSystemEntity entity) item,
    required TResult Function(FileSystemEntity entity, ST2Spec spec) st2card,
    required TResult Function(FileSystemEntity entity) parent,
  }) {
    return item(displayName, entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName, FileSystemEntity entity)? item,
    TResult? Function(FileSystemEntity entity, ST2Spec spec)? st2card,
    TResult? Function(FileSystemEntity entity)? parent,
  }) {
    return item?.call(displayName, entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName, FileSystemEntity entity)? item,
    TResult Function(FileSystemEntity entity, ST2Spec spec)? st2card,
    TResult Function(FileSystemEntity entity)? parent,
    required TResult orElse(),
  }) {
    if (item != null) {
      return item(displayName, entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DirectoryItem value) item,
    required TResult Function(_ST2Card value) st2card,
    required TResult Function(_ParentItem value) parent,
  }) {
    return item(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DirectoryItem value)? item,
    TResult? Function(_ST2Card value)? st2card,
    TResult? Function(_ParentItem value)? parent,
  }) {
    return item?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DirectoryItem value)? item,
    TResult Function(_ST2Card value)? st2card,
    TResult Function(_ParentItem value)? parent,
    required TResult orElse(),
  }) {
    if (item != null) {
      return item(this);
    }
    return orElse();
  }
}

abstract class _DirectoryItem extends DirectoryItem {
  const factory _DirectoryItem(
      {required final String displayName,
      required final FileSystemEntity entity}) = _$DirectoryItemImpl;
  const _DirectoryItem._() : super._();

  String get displayName;
  @override
  FileSystemEntity get entity;
  @override
  @JsonKey(ignore: true)
  _$$DirectoryItemImplCopyWith<_$DirectoryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ST2CardImplCopyWith<$Res>
    implements $DirectoryItemCopyWith<$Res> {
  factory _$$ST2CardImplCopyWith(
          _$ST2CardImpl value, $Res Function(_$ST2CardImpl) then) =
      __$$ST2CardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FileSystemEntity entity, ST2Spec spec});

  $ST2SpecCopyWith<$Res> get spec;
}

/// @nodoc
class __$$ST2CardImplCopyWithImpl<$Res>
    extends _$DirectoryItemCopyWithImpl<$Res, _$ST2CardImpl>
    implements _$$ST2CardImplCopyWith<$Res> {
  __$$ST2CardImplCopyWithImpl(
      _$ST2CardImpl _value, $Res Function(_$ST2CardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? spec = null,
  }) {
    return _then(_$ST2CardImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as FileSystemEntity,
      spec: null == spec
          ? _value.spec
          : spec // ignore: cast_nullable_to_non_nullable
              as ST2Spec,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ST2SpecCopyWith<$Res> get spec {
    return $ST2SpecCopyWith<$Res>(_value.spec, (value) {
      return _then(_value.copyWith(spec: value));
    });
  }
}

/// @nodoc

class _$ST2CardImpl extends _ST2Card {
  _$ST2CardImpl({required this.entity, required this.spec}) : super._();

  @override
  final FileSystemEntity entity;
  @override
  final ST2Spec spec;

  @override
  String toString() {
    return 'DirectoryItem.st2card(entity: $entity, spec: $spec)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ST2CardImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.spec, spec) || other.spec == spec));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, spec);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ST2CardImplCopyWith<_$ST2CardImpl> get copyWith =>
      __$$ST2CardImplCopyWithImpl<_$ST2CardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName, FileSystemEntity entity) item,
    required TResult Function(FileSystemEntity entity, ST2Spec spec) st2card,
    required TResult Function(FileSystemEntity entity) parent,
  }) {
    return st2card(entity, spec);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName, FileSystemEntity entity)? item,
    TResult? Function(FileSystemEntity entity, ST2Spec spec)? st2card,
    TResult? Function(FileSystemEntity entity)? parent,
  }) {
    return st2card?.call(entity, spec);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName, FileSystemEntity entity)? item,
    TResult Function(FileSystemEntity entity, ST2Spec spec)? st2card,
    TResult Function(FileSystemEntity entity)? parent,
    required TResult orElse(),
  }) {
    if (st2card != null) {
      return st2card(entity, spec);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DirectoryItem value) item,
    required TResult Function(_ST2Card value) st2card,
    required TResult Function(_ParentItem value) parent,
  }) {
    return st2card(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DirectoryItem value)? item,
    TResult? Function(_ST2Card value)? st2card,
    TResult? Function(_ParentItem value)? parent,
  }) {
    return st2card?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DirectoryItem value)? item,
    TResult Function(_ST2Card value)? st2card,
    TResult Function(_ParentItem value)? parent,
    required TResult orElse(),
  }) {
    if (st2card != null) {
      return st2card(this);
    }
    return orElse();
  }
}

abstract class _ST2Card extends DirectoryItem {
  factory _ST2Card(
      {required final FileSystemEntity entity,
      required final ST2Spec spec}) = _$ST2CardImpl;
  _ST2Card._() : super._();

  @override
  FileSystemEntity get entity;
  ST2Spec get spec;
  @override
  @JsonKey(ignore: true)
  _$$ST2CardImplCopyWith<_$ST2CardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParentItemImplCopyWith<$Res>
    implements $DirectoryItemCopyWith<$Res> {
  factory _$$ParentItemImplCopyWith(
          _$ParentItemImpl value, $Res Function(_$ParentItemImpl) then) =
      __$$ParentItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FileSystemEntity entity});
}

/// @nodoc
class __$$ParentItemImplCopyWithImpl<$Res>
    extends _$DirectoryItemCopyWithImpl<$Res, _$ParentItemImpl>
    implements _$$ParentItemImplCopyWith<$Res> {
  __$$ParentItemImplCopyWithImpl(
      _$ParentItemImpl _value, $Res Function(_$ParentItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$ParentItemImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as FileSystemEntity,
    ));
  }
}

/// @nodoc

class _$ParentItemImpl extends _ParentItem {
  _$ParentItemImpl({required this.entity}) : super._();

  @override
  final FileSystemEntity entity;

  @override
  String toString() {
    return 'DirectoryItem.parent(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParentItemImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParentItemImplCopyWith<_$ParentItemImpl> get copyWith =>
      __$$ParentItemImplCopyWithImpl<_$ParentItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String displayName, FileSystemEntity entity) item,
    required TResult Function(FileSystemEntity entity, ST2Spec spec) st2card,
    required TResult Function(FileSystemEntity entity) parent,
  }) {
    return parent(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String displayName, FileSystemEntity entity)? item,
    TResult? Function(FileSystemEntity entity, ST2Spec spec)? st2card,
    TResult? Function(FileSystemEntity entity)? parent,
  }) {
    return parent?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String displayName, FileSystemEntity entity)? item,
    TResult Function(FileSystemEntity entity, ST2Spec spec)? st2card,
    TResult Function(FileSystemEntity entity)? parent,
    required TResult orElse(),
  }) {
    if (parent != null) {
      return parent(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DirectoryItem value) item,
    required TResult Function(_ST2Card value) st2card,
    required TResult Function(_ParentItem value) parent,
  }) {
    return parent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DirectoryItem value)? item,
    TResult? Function(_ST2Card value)? st2card,
    TResult? Function(_ParentItem value)? parent,
  }) {
    return parent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DirectoryItem value)? item,
    TResult Function(_ST2Card value)? st2card,
    TResult Function(_ParentItem value)? parent,
    required TResult orElse(),
  }) {
    if (parent != null) {
      return parent(this);
    }
    return orElse();
  }
}

abstract class _ParentItem extends DirectoryItem {
  factory _ParentItem({required final FileSystemEntity entity}) =
      _$ParentItemImpl;
  _ParentItem._() : super._();

  @override
  FileSystemEntity get entity;
  @override
  @JsonKey(ignore: true)
  _$$ParentItemImplCopyWith<_$ParentItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DirectoryContent {
  BuiltList<DirectoryItem> get entities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DirectoryContentCopyWith<DirectoryContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectoryContentCopyWith<$Res> {
  factory $DirectoryContentCopyWith(
          DirectoryContent value, $Res Function(DirectoryContent) then) =
      _$DirectoryContentCopyWithImpl<$Res, DirectoryContent>;
  @useResult
  $Res call({BuiltList<DirectoryItem> entities});
}

/// @nodoc
class _$DirectoryContentCopyWithImpl<$Res, $Val extends DirectoryContent>
    implements $DirectoryContentCopyWith<$Res> {
  _$DirectoryContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
  }) {
    return _then(_value.copyWith(
      entities: null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as BuiltList<DirectoryItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DirectoryContentImplCopyWith<$Res>
    implements $DirectoryContentCopyWith<$Res> {
  factory _$$DirectoryContentImplCopyWith(_$DirectoryContentImpl value,
          $Res Function(_$DirectoryContentImpl) then) =
      __$$DirectoryContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuiltList<DirectoryItem> entities});
}

/// @nodoc
class __$$DirectoryContentImplCopyWithImpl<$Res>
    extends _$DirectoryContentCopyWithImpl<$Res, _$DirectoryContentImpl>
    implements _$$DirectoryContentImplCopyWith<$Res> {
  __$$DirectoryContentImplCopyWithImpl(_$DirectoryContentImpl _value,
      $Res Function(_$DirectoryContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
  }) {
    return _then(_$DirectoryContentImpl(
      entities: null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as BuiltList<DirectoryItem>,
    ));
  }
}

/// @nodoc

class _$DirectoryContentImpl extends _DirectoryContent {
  const _$DirectoryContentImpl({required this.entities}) : super._();

  @override
  final BuiltList<DirectoryItem> entities;

  @override
  String toString() {
    return 'DirectoryContent(entities: $entities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectoryContentImpl &&
            const DeepCollectionEquality().equals(other.entities, entities));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(entities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectoryContentImplCopyWith<_$DirectoryContentImpl> get copyWith =>
      __$$DirectoryContentImplCopyWithImpl<_$DirectoryContentImpl>(
          this, _$identity);
}

abstract class _DirectoryContent extends DirectoryContent {
  const factory _DirectoryContent(
          {required final BuiltList<DirectoryItem> entities}) =
      _$DirectoryContentImpl;
  const _DirectoryContent._() : super._();

  @override
  BuiltList<DirectoryItem> get entities;
  @override
  @JsonKey(ignore: true)
  _$$DirectoryContentImplCopyWith<_$DirectoryContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
