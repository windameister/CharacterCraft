// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditorSettings _$EditorSettingsFromJson(Map<String, dynamic> json) {
  return _EditorSettings.fromJson(json);
}

/// @nodoc
mixin _$EditorSettings {
  String get workingDirectory => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  CopilotOptions get copilotOptions => throw _privateConstructorUsedError;
  OpenAIOptions get openAIOptions => throw _privateConstructorUsedError;
  PromptTemplate get promptTemplate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditorSettingsCopyWith<EditorSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorSettingsCopyWith<$Res> {
  factory $EditorSettingsCopyWith(
          EditorSettings value, $Res Function(EditorSettings) then) =
      _$EditorSettingsCopyWithImpl<$Res, EditorSettings>;
  @useResult
  $Res call(
      {String workingDirectory,
      String author,
      CopilotOptions copilotOptions,
      OpenAIOptions openAIOptions,
      PromptTemplate promptTemplate});

  $CopilotOptionsCopyWith<$Res> get copilotOptions;
  $OpenAIOptionsCopyWith<$Res> get openAIOptions;
  $PromptTemplateCopyWith<$Res> get promptTemplate;
}

/// @nodoc
class _$EditorSettingsCopyWithImpl<$Res, $Val extends EditorSettings>
    implements $EditorSettingsCopyWith<$Res> {
  _$EditorSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workingDirectory = null,
    Object? author = null,
    Object? copilotOptions = null,
    Object? openAIOptions = null,
    Object? promptTemplate = null,
  }) {
    return _then(_value.copyWith(
      workingDirectory: null == workingDirectory
          ? _value.workingDirectory
          : workingDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      copilotOptions: null == copilotOptions
          ? _value.copilotOptions
          : copilotOptions // ignore: cast_nullable_to_non_nullable
              as CopilotOptions,
      openAIOptions: null == openAIOptions
          ? _value.openAIOptions
          : openAIOptions // ignore: cast_nullable_to_non_nullable
              as OpenAIOptions,
      promptTemplate: null == promptTemplate
          ? _value.promptTemplate
          : promptTemplate // ignore: cast_nullable_to_non_nullable
              as PromptTemplate,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CopilotOptionsCopyWith<$Res> get copilotOptions {
    return $CopilotOptionsCopyWith<$Res>(_value.copilotOptions, (value) {
      return _then(_value.copyWith(copilotOptions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OpenAIOptionsCopyWith<$Res> get openAIOptions {
    return $OpenAIOptionsCopyWith<$Res>(_value.openAIOptions, (value) {
      return _then(_value.copyWith(openAIOptions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PromptTemplateCopyWith<$Res> get promptTemplate {
    return $PromptTemplateCopyWith<$Res>(_value.promptTemplate, (value) {
      return _then(_value.copyWith(promptTemplate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditorSettingsImplCopyWith<$Res>
    implements $EditorSettingsCopyWith<$Res> {
  factory _$$EditorSettingsImplCopyWith(_$EditorSettingsImpl value,
          $Res Function(_$EditorSettingsImpl) then) =
      __$$EditorSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String workingDirectory,
      String author,
      CopilotOptions copilotOptions,
      OpenAIOptions openAIOptions,
      PromptTemplate promptTemplate});

  @override
  $CopilotOptionsCopyWith<$Res> get copilotOptions;
  @override
  $OpenAIOptionsCopyWith<$Res> get openAIOptions;
  @override
  $PromptTemplateCopyWith<$Res> get promptTemplate;
}

/// @nodoc
class __$$EditorSettingsImplCopyWithImpl<$Res>
    extends _$EditorSettingsCopyWithImpl<$Res, _$EditorSettingsImpl>
    implements _$$EditorSettingsImplCopyWith<$Res> {
  __$$EditorSettingsImplCopyWithImpl(
      _$EditorSettingsImpl _value, $Res Function(_$EditorSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workingDirectory = null,
    Object? author = null,
    Object? copilotOptions = null,
    Object? openAIOptions = null,
    Object? promptTemplate = null,
  }) {
    return _then(_$EditorSettingsImpl(
      workingDirectory: null == workingDirectory
          ? _value.workingDirectory
          : workingDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      copilotOptions: null == copilotOptions
          ? _value.copilotOptions
          : copilotOptions // ignore: cast_nullable_to_non_nullable
              as CopilotOptions,
      openAIOptions: null == openAIOptions
          ? _value.openAIOptions
          : openAIOptions // ignore: cast_nullable_to_non_nullable
              as OpenAIOptions,
      promptTemplate: null == promptTemplate
          ? _value.promptTemplate
          : promptTemplate // ignore: cast_nullable_to_non_nullable
              as PromptTemplate,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditorSettingsImpl extends _EditorSettings {
  const _$EditorSettingsImpl(
      {required this.workingDirectory,
      this.author = '',
      required this.copilotOptions,
      required this.openAIOptions,
      required this.promptTemplate})
      : super._();

  factory _$EditorSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditorSettingsImplFromJson(json);

  @override
  final String workingDirectory;
  @override
  @JsonKey()
  final String author;
  @override
  final CopilotOptions copilotOptions;
  @override
  final OpenAIOptions openAIOptions;
  @override
  final PromptTemplate promptTemplate;

  @override
  String toString() {
    return 'EditorSettings(workingDirectory: $workingDirectory, author: $author, copilotOptions: $copilotOptions, openAIOptions: $openAIOptions, promptTemplate: $promptTemplate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorSettingsImpl &&
            (identical(other.workingDirectory, workingDirectory) ||
                other.workingDirectory == workingDirectory) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.copilotOptions, copilotOptions) ||
                other.copilotOptions == copilotOptions) &&
            (identical(other.openAIOptions, openAIOptions) ||
                other.openAIOptions == openAIOptions) &&
            (identical(other.promptTemplate, promptTemplate) ||
                other.promptTemplate == promptTemplate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, workingDirectory, author,
      copilotOptions, openAIOptions, promptTemplate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorSettingsImplCopyWith<_$EditorSettingsImpl> get copyWith =>
      __$$EditorSettingsImplCopyWithImpl<_$EditorSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditorSettingsImplToJson(
      this,
    );
  }
}

abstract class _EditorSettings extends EditorSettings {
  const factory _EditorSettings(
      {required final String workingDirectory,
      final String author,
      required final CopilotOptions copilotOptions,
      required final OpenAIOptions openAIOptions,
      required final PromptTemplate promptTemplate}) = _$EditorSettingsImpl;
  const _EditorSettings._() : super._();

  factory _EditorSettings.fromJson(Map<String, dynamic> json) =
      _$EditorSettingsImpl.fromJson;

  @override
  String get workingDirectory;
  @override
  String get author;
  @override
  CopilotOptions get copilotOptions;
  @override
  OpenAIOptions get openAIOptions;
  @override
  PromptTemplate get promptTemplate;
  @override
  @JsonKey(ignore: true)
  _$$EditorSettingsImplCopyWith<_$EditorSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
