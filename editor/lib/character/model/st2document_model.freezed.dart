// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'st2document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ST2DocumentModel {
  String get imageFile => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  ST2CharacterModel get character => throw _privateConstructorUsedError;
  ST2CharacterBookModel get characterBook => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ST2DocumentModelCopyWith<ST2DocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ST2DocumentModelCopyWith<$Res> {
  factory $ST2DocumentModelCopyWith(
          ST2DocumentModel value, $Res Function(ST2DocumentModel) then) =
      _$ST2DocumentModelCopyWithImpl<$Res, ST2DocumentModel>;
  @useResult
  $Res call(
      {String imageFile,
      String author,
      ST2CharacterModel character,
      ST2CharacterBookModel characterBook});

  $ST2CharacterModelCopyWith<$Res> get character;
  $ST2CharacterBookModelCopyWith<$Res> get characterBook;
}

/// @nodoc
class _$ST2DocumentModelCopyWithImpl<$Res, $Val extends ST2DocumentModel>
    implements $ST2DocumentModelCopyWith<$Res> {
  _$ST2DocumentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = null,
    Object? author = null,
    Object? character = null,
    Object? characterBook = null,
  }) {
    return _then(_value.copyWith(
      imageFile: null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as ST2CharacterModel,
      characterBook: null == characterBook
          ? _value.characterBook
          : characterBook // ignore: cast_nullable_to_non_nullable
              as ST2CharacterBookModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ST2CharacterModelCopyWith<$Res> get character {
    return $ST2CharacterModelCopyWith<$Res>(_value.character, (value) {
      return _then(_value.copyWith(character: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ST2CharacterBookModelCopyWith<$Res> get characterBook {
    return $ST2CharacterBookModelCopyWith<$Res>(_value.characterBook, (value) {
      return _then(_value.copyWith(characterBook: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ST2DocumentModelImplCopyWith<$Res>
    implements $ST2DocumentModelCopyWith<$Res> {
  factory _$$ST2DocumentModelImplCopyWith(_$ST2DocumentModelImpl value,
          $Res Function(_$ST2DocumentModelImpl) then) =
      __$$ST2DocumentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imageFile,
      String author,
      ST2CharacterModel character,
      ST2CharacterBookModel characterBook});

  @override
  $ST2CharacterModelCopyWith<$Res> get character;
  @override
  $ST2CharacterBookModelCopyWith<$Res> get characterBook;
}

/// @nodoc
class __$$ST2DocumentModelImplCopyWithImpl<$Res>
    extends _$ST2DocumentModelCopyWithImpl<$Res, _$ST2DocumentModelImpl>
    implements _$$ST2DocumentModelImplCopyWith<$Res> {
  __$$ST2DocumentModelImplCopyWithImpl(_$ST2DocumentModelImpl _value,
      $Res Function(_$ST2DocumentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = null,
    Object? author = null,
    Object? character = null,
    Object? characterBook = null,
  }) {
    return _then(_$ST2DocumentModelImpl(
      imageFile: null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as ST2CharacterModel,
      characterBook: null == characterBook
          ? _value.characterBook
          : characterBook // ignore: cast_nullable_to_non_nullable
              as ST2CharacterBookModel,
    ));
  }
}

/// @nodoc

class _$ST2DocumentModelImpl extends _ST2DocumentModel {
  const _$ST2DocumentModelImpl(
      {required this.imageFile,
      required this.author,
      required this.character,
      required this.characterBook})
      : super._();

  @override
  final String imageFile;
  @override
  final String author;
  @override
  final ST2CharacterModel character;
  @override
  final ST2CharacterBookModel characterBook;

  @override
  String toString() {
    return 'ST2DocumentModel(imageFile: $imageFile, author: $author, character: $character, characterBook: $characterBook)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ST2DocumentModelImpl &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.characterBook, characterBook) ||
                other.characterBook == characterBook));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, imageFile, author, character, characterBook);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ST2DocumentModelImplCopyWith<_$ST2DocumentModelImpl> get copyWith =>
      __$$ST2DocumentModelImplCopyWithImpl<_$ST2DocumentModelImpl>(
          this, _$identity);
}

abstract class _ST2DocumentModel extends ST2DocumentModel {
  const factory _ST2DocumentModel(
          {required final String imageFile,
          required final String author,
          required final ST2CharacterModel character,
          required final ST2CharacterBookModel characterBook}) =
      _$ST2DocumentModelImpl;
  const _ST2DocumentModel._() : super._();

  @override
  String get imageFile;
  @override
  String get author;
  @override
  ST2CharacterModel get character;
  @override
  ST2CharacterBookModel get characterBook;
  @override
  @JsonKey(ignore: true)
  _$$ST2DocumentModelImplCopyWith<_$ST2DocumentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
