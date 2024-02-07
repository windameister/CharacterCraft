// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_runtime_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditorRuntimeOptions {
  String get workingDirectory => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  CopilotOptions get copilotOptions => throw _privateConstructorUsedError;
  AiConnectionOption get aiConnectionOption =>
      throw _privateConstructorUsedError;
  OpenAIOptions get openaiOptions =>
      throw _privateConstructorUsedError; // chat prompt options (could be updated)
  PromptTemplate get promptTemplate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditorRuntimeOptionsCopyWith<EditorRuntimeOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorRuntimeOptionsCopyWith<$Res> {
  factory $EditorRuntimeOptionsCopyWith(EditorRuntimeOptions value,
          $Res Function(EditorRuntimeOptions) then) =
      _$EditorRuntimeOptionsCopyWithImpl<$Res, EditorRuntimeOptions>;
  @useResult
  $Res call(
      {String workingDirectory,
      String author,
      CopilotOptions copilotOptions,
      AiConnectionOption aiConnectionOption,
      OpenAIOptions openaiOptions,
      PromptTemplate promptTemplate});

  $CopilotOptionsCopyWith<$Res> get copilotOptions;
  $AiConnectionOptionCopyWith<$Res> get aiConnectionOption;
  $OpenAIOptionsCopyWith<$Res> get openaiOptions;
  $PromptTemplateCopyWith<$Res> get promptTemplate;
}

/// @nodoc
class _$EditorRuntimeOptionsCopyWithImpl<$Res,
        $Val extends EditorRuntimeOptions>
    implements $EditorRuntimeOptionsCopyWith<$Res> {
  _$EditorRuntimeOptionsCopyWithImpl(this._value, this._then);

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
    Object? aiConnectionOption = null,
    Object? openaiOptions = null,
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
      aiConnectionOption: null == aiConnectionOption
          ? _value.aiConnectionOption
          : aiConnectionOption // ignore: cast_nullable_to_non_nullable
              as AiConnectionOption,
      openaiOptions: null == openaiOptions
          ? _value.openaiOptions
          : openaiOptions // ignore: cast_nullable_to_non_nullable
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
  $AiConnectionOptionCopyWith<$Res> get aiConnectionOption {
    return $AiConnectionOptionCopyWith<$Res>(_value.aiConnectionOption,
        (value) {
      return _then(_value.copyWith(aiConnectionOption: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OpenAIOptionsCopyWith<$Res> get openaiOptions {
    return $OpenAIOptionsCopyWith<$Res>(_value.openaiOptions, (value) {
      return _then(_value.copyWith(openaiOptions: value) as $Val);
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
abstract class _$$EditorRuntimeOptionsImplCopyWith<$Res>
    implements $EditorRuntimeOptionsCopyWith<$Res> {
  factory _$$EditorRuntimeOptionsImplCopyWith(_$EditorRuntimeOptionsImpl value,
          $Res Function(_$EditorRuntimeOptionsImpl) then) =
      __$$EditorRuntimeOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String workingDirectory,
      String author,
      CopilotOptions copilotOptions,
      AiConnectionOption aiConnectionOption,
      OpenAIOptions openaiOptions,
      PromptTemplate promptTemplate});

  @override
  $CopilotOptionsCopyWith<$Res> get copilotOptions;
  @override
  $AiConnectionOptionCopyWith<$Res> get aiConnectionOption;
  @override
  $OpenAIOptionsCopyWith<$Res> get openaiOptions;
  @override
  $PromptTemplateCopyWith<$Res> get promptTemplate;
}

/// @nodoc
class __$$EditorRuntimeOptionsImplCopyWithImpl<$Res>
    extends _$EditorRuntimeOptionsCopyWithImpl<$Res, _$EditorRuntimeOptionsImpl>
    implements _$$EditorRuntimeOptionsImplCopyWith<$Res> {
  __$$EditorRuntimeOptionsImplCopyWithImpl(_$EditorRuntimeOptionsImpl _value,
      $Res Function(_$EditorRuntimeOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workingDirectory = null,
    Object? author = null,
    Object? copilotOptions = null,
    Object? aiConnectionOption = null,
    Object? openaiOptions = null,
    Object? promptTemplate = null,
  }) {
    return _then(_$EditorRuntimeOptionsImpl(
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
      aiConnectionOption: null == aiConnectionOption
          ? _value.aiConnectionOption
          : aiConnectionOption // ignore: cast_nullable_to_non_nullable
              as AiConnectionOption,
      openaiOptions: null == openaiOptions
          ? _value.openaiOptions
          : openaiOptions // ignore: cast_nullable_to_non_nullable
              as OpenAIOptions,
      promptTemplate: null == promptTemplate
          ? _value.promptTemplate
          : promptTemplate // ignore: cast_nullable_to_non_nullable
              as PromptTemplate,
    ));
  }
}

/// @nodoc

class _$EditorRuntimeOptionsImpl extends _EditorRuntimeOptions {
  const _$EditorRuntimeOptionsImpl(
      {required this.workingDirectory,
      required this.author,
      required this.copilotOptions,
      required this.aiConnectionOption,
      required this.openaiOptions,
      required this.promptTemplate})
      : super._();

  @override
  final String workingDirectory;
  @override
  final String author;
  @override
  final CopilotOptions copilotOptions;
  @override
  final AiConnectionOption aiConnectionOption;
  @override
  final OpenAIOptions openaiOptions;
// chat prompt options (could be updated)
  @override
  final PromptTemplate promptTemplate;

  @override
  String toString() {
    return 'EditorRuntimeOptions(workingDirectory: $workingDirectory, author: $author, copilotOptions: $copilotOptions, aiConnectionOption: $aiConnectionOption, openaiOptions: $openaiOptions, promptTemplate: $promptTemplate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorRuntimeOptionsImpl &&
            (identical(other.workingDirectory, workingDirectory) ||
                other.workingDirectory == workingDirectory) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.copilotOptions, copilotOptions) ||
                other.copilotOptions == copilotOptions) &&
            (identical(other.aiConnectionOption, aiConnectionOption) ||
                other.aiConnectionOption == aiConnectionOption) &&
            (identical(other.openaiOptions, openaiOptions) ||
                other.openaiOptions == openaiOptions) &&
            (identical(other.promptTemplate, promptTemplate) ||
                other.promptTemplate == promptTemplate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workingDirectory, author,
      copilotOptions, aiConnectionOption, openaiOptions, promptTemplate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorRuntimeOptionsImplCopyWith<_$EditorRuntimeOptionsImpl>
      get copyWith =>
          __$$EditorRuntimeOptionsImplCopyWithImpl<_$EditorRuntimeOptionsImpl>(
              this, _$identity);
}

abstract class _EditorRuntimeOptions extends EditorRuntimeOptions {
  const factory _EditorRuntimeOptions(
          {required final String workingDirectory,
          required final String author,
          required final CopilotOptions copilotOptions,
          required final AiConnectionOption aiConnectionOption,
          required final OpenAIOptions openaiOptions,
          required final PromptTemplate promptTemplate}) =
      _$EditorRuntimeOptionsImpl;
  const _EditorRuntimeOptions._() : super._();

  @override
  String get workingDirectory;
  @override
  String get author;
  @override
  CopilotOptions get copilotOptions;
  @override
  AiConnectionOption get aiConnectionOption;
  @override
  OpenAIOptions get openaiOptions;
  @override // chat prompt options (could be updated)
  PromptTemplate get promptTemplate;
  @override
  @JsonKey(ignore: true)
  _$$EditorRuntimeOptionsImplCopyWith<_$EditorRuntimeOptionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
