// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EditorStore on _EditorStore, Store {
  Computed<bool>? _$isCopilotEnabledComputed;

  @override
  bool get isCopilotEnabled => (_$isCopilotEnabledComputed ??= Computed<bool>(
          () => super.isCopilotEnabled,
          name: '_EditorStore.isCopilotEnabled'))
      .value;
  Computed<bool>? _$isCopilotUseCharacterContextComputed;

  @override
  bool get isCopilotUseCharacterContext =>
      (_$isCopilotUseCharacterContextComputed ??= Computed<bool>(
              () => super.isCopilotUseCharacterContext,
              name: '_EditorStore.isCopilotUseCharacterContext'))
          .value;
  Computed<String>? _$workingDirComputed;

  @override
  String get workingDir =>
      (_$workingDirComputed ??= Computed<String>(() => super.workingDir,
              name: '_EditorStore.workingDir'))
          .value;
  Computed<String>? _$modelComputed;

  @override
  String get model => (_$modelComputed ??=
          Computed<String>(() => super.model, name: '_EditorStore.model'))
      .value;
  Computed<OpenaiConfig?>? _$openaiConfigComputed;

  @override
  OpenaiConfig? get openaiConfig => (_$openaiConfigComputed ??=
          Computed<OpenaiConfig?>(() => super.openaiConfig,
              name: '_EditorStore.openaiConfig'))
      .value;
  Computed<String>? _$aiConnectionStatusComputed;

  @override
  String get aiConnectionStatus => (_$aiConnectionStatusComputed ??=
          Computed<String>(() => super.aiConnectionStatus,
              name: '_EditorStore.aiConnectionStatus'))
      .value;
  Computed<bool>? _$aiConnectionReadyComputed;

  @override
  bool get aiConnectionReady => (_$aiConnectionReadyComputed ??= Computed<bool>(
          () => super.aiConnectionReady,
          name: '_EditorStore.aiConnectionReady'))
      .value;
  Computed<String?>? _$apiKeyComputed;

  @override
  String? get apiKey => (_$apiKeyComputed ??=
          Computed<String?>(() => super.apiKey, name: '_EditorStore.apiKey'))
      .value;
  Computed<String?>? _$apiBaseUrlComputed;

  @override
  String? get apiBaseUrl =>
      (_$apiBaseUrlComputed ??= Computed<String?>(() => super.apiBaseUrl,
              name: '_EditorStore.apiBaseUrl'))
          .value;

  late final _$editorRuntimeOptionsAtom =
      Atom(name: '_EditorStore.editorRuntimeOptions', context: context);

  @override
  EditorRuntimeOptions get editorRuntimeOptions {
    _$editorRuntimeOptionsAtom.reportRead();
    return super.editorRuntimeOptions;
  }

  bool _editorRuntimeOptionsIsInitialized = false;

  @override
  set editorRuntimeOptions(EditorRuntimeOptions value) {
    _$editorRuntimeOptionsAtom.reportWrite(value,
        _editorRuntimeOptionsIsInitialized ? super.editorRuntimeOptions : null,
        () {
      super.editorRuntimeOptions = value;
      _editorRuntimeOptionsIsInitialized = true;
    });
  }

  late final _$directoryContentAtom =
      Atom(name: '_EditorStore.directoryContent', context: context);

  @override
  DirectoryContent get directoryContent {
    _$directoryContentAtom.reportRead();
    return super.directoryContent;
  }

  @override
  set directoryContent(DirectoryContent value) {
    _$directoryContentAtom.reportWrite(value, super.directoryContent, () {
      super.directoryContent = value;
    });
  }

  late final _$parseST2CardsInCurrentDirectoryAsyncAction = AsyncAction(
      '_EditorStore.parseST2CardsInCurrentDirectory',
      context: context);

  @override
  Future parseST2CardsInCurrentDirectory() {
    return _$parseST2CardsInCurrentDirectoryAsyncAction
        .run(() => super.parseST2CardsInCurrentDirectory());
  }

  late final _$parseDirectoryItemAsyncAction =
      AsyncAction('_EditorStore.parseDirectoryItem', context: context);

  @override
  Future<DirectoryItem> parseDirectoryItem(int index) {
    return _$parseDirectoryItemAsyncAction
        .run(() => super.parseDirectoryItem(index));
  }

  late final _$_EditorStoreActionController =
      ActionController(name: '_EditorStore', context: context);

  @override
  void changeDirectory(String path) {
    final _$actionInfo = _$_EditorStoreActionController.startAction(
        name: '_EditorStore.changeDirectory');
    try {
      return super.changeDirectory(path);
    } finally {
      _$_EditorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCopilotEnabled(bool enabled) {
    final _$actionInfo = _$_EditorStoreActionController.startAction(
        name: '_EditorStore.changeCopilotEnabled');
    try {
      return super.changeCopilotEnabled(enabled);
    } finally {
      _$_EditorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCopilotUseCharacterContext(bool enabled) {
    final _$actionInfo = _$_EditorStoreActionController.startAction(
        name: '_EditorStore.changeCopilotUseCharacterContext');
    try {
      return super.changeCopilotUseCharacterContext(enabled);
    } finally {
      _$_EditorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
editorRuntimeOptions: ${editorRuntimeOptions},
directoryContent: ${directoryContent},
isCopilotEnabled: ${isCopilotEnabled},
isCopilotUseCharacterContext: ${isCopilotUseCharacterContext},
workingDir: ${workingDir},
model: ${model},
openaiConfig: ${openaiConfig},
aiConnectionStatus: ${aiConnectionStatus},
aiConnectionReady: ${aiConnectionReady},
apiKey: ${apiKey},
apiBaseUrl: ${apiBaseUrl}
    ''';
  }
}
