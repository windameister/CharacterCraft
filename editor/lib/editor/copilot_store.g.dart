// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copilot_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CopilotStore on _CopilotStore, Store {
  Computed<EditorRuntimeOptions>? _$runtimeOptionsComputed;

  @override
  EditorRuntimeOptions get runtimeOptions => (_$runtimeOptionsComputed ??=
          Computed<EditorRuntimeOptions>(() => super.runtimeOptions,
              name: '_CopilotStore.runtimeOptions'))
      .value;
  Computed<CopilotOptions>? _$copilotOptionsComputed;

  @override
  CopilotOptions get copilotOptions => (_$copilotOptionsComputed ??=
          Computed<CopilotOptions>(() => super.copilotOptions,
              name: '_CopilotStore.copilotOptions'))
      .value;
  Computed<bool>? _$isUseCharacterContextComputed;

  @override
  bool get isUseCharacterContext => (_$isUseCharacterContextComputed ??=
          Computed<bool>(() => super.isUseCharacterContext,
              name: '_CopilotStore.isUseCharacterContext'))
      .value;
  Computed<bool>? _$isCopilotEditingEnabledComputed;

  @override
  bool get isCopilotEditingEnabled => (_$isCopilotEditingEnabledComputed ??=
          Computed<bool>(() => super.isCopilotEditingEnabled,
              name: '_CopilotStore.isCopilotEditingEnabled'))
      .value;
  Computed<bool>? _$isSendableComputed;

  @override
  bool get isSendable =>
      (_$isSendableComputed ??= Computed<bool>(() => super.isSendable,
              name: '_CopilotStore.isSendable'))
          .value;
  Computed<bool>? _$isWaitingForUserInputComputed;

  @override
  bool get isWaitingForUserInput => (_$isWaitingForUserInputComputed ??=
          Computed<bool>(() => super.isWaitingForUserInput,
              name: '_CopilotStore.isWaitingForUserInput'))
      .value;
  Computed<bool>? _$hasNeedConfirmationContentComputed;

  @override
  bool get hasNeedConfirmationContent =>
      (_$hasNeedConfirmationContentComputed ??= Computed<bool>(
              () => super.hasNeedConfirmationContent,
              name: '_CopilotStore.hasNeedConfirmationContent'))
          .value;
  Computed<bool>? _$hasCopilotEditingContentComputed;

  @override
  bool get hasCopilotEditingContent => (_$hasCopilotEditingContentComputed ??=
          Computed<bool>(() => super.hasCopilotEditingContent,
              name: '_CopilotStore.hasCopilotEditingContent'))
      .value;

  late final _$isWorkingByLLMAtom =
      Atom(name: '_CopilotStore.isWorkingByLLM', context: context);

  @override
  bool get isWorkingByLLM {
    _$isWorkingByLLMAtom.reportRead();
    return super.isWorkingByLLM;
  }

  @override
  set isWorkingByLLM(bool value) {
    _$isWorkingByLLMAtom.reportWrite(value, super.isWorkingByLLM, () {
      super.isWorkingByLLM = value;
    });
  }

  late final _$copilotEditingAtom =
      Atom(name: '_CopilotStore.copilotEditing', context: context);

  @override
  CopilotEditing? get copilotEditing {
    _$copilotEditingAtom.reportRead();
    return super.copilotEditing;
  }

  @override
  set copilotEditing(CopilotEditing? value) {
    _$copilotEditingAtom.reportWrite(value, super.copilotEditing, () {
      super.copilotEditing = value;
    });
  }

  late final _$sendPromptEditAsyncAction =
      AsyncAction('_CopilotStore.sendPromptEdit', context: context);

  @override
  Future sendPromptEdit() {
    return _$sendPromptEditAsyncAction.run(() => super.sendPromptEdit());
  }

  late final _$expandTheTextAsyncAction =
      AsyncAction('_CopilotStore.expandTheText', context: context);

  @override
  Future<CopilotEditing?> expandTheText() {
    return _$expandTheTextAsyncAction.run(() => super.expandTheText());
  }

  late final _$reviseTextAsyncAction =
      AsyncAction('_CopilotStore.reviseText', context: context);

  @override
  Future<CopilotEditing?> reviseText() {
    return _$reviseTextAsyncAction.run(() => super.reviseText());
  }

  late final _$summarizeTextAsyncAction =
      AsyncAction('_CopilotStore.summarizeText', context: context);

  @override
  Future<CopilotEditing?> summarizeText() {
    return _$summarizeTextAsyncAction.run(() => super.summarizeText());
  }

  late final _$_CopilotStoreActionController =
      ActionController(name: '_CopilotStore', context: context);

  @override
  void changeUseCharacterContext(bool value) {
    final _$actionInfo = _$_CopilotStoreActionController.startAction(
        name: '_CopilotStore.changeUseCharacterContext');
    try {
      return super.changeUseCharacterContext(value);
    } finally {
      _$_CopilotStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCopilotEnabled(bool value) {
    final _$actionInfo = _$_CopilotStoreActionController.startAction(
        name: '_CopilotStore.changeCopilotEnabled');
    try {
      return super.changeCopilotEnabled(value);
    } finally {
      _$_CopilotStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCurrentActiveEditing(CopilotEditing editing) {
    final _$actionInfo = _$_CopilotStoreActionController.startAction(
        name: '_CopilotStore.setCurrentActiveEditing');
    try {
      return super.setCurrentActiveEditing(editing);
    } finally {
      _$_CopilotStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editingPrompt(String prompt) {
    final _$actionInfo = _$_CopilotStoreActionController.startAction(
        name: '_CopilotStore.editingPrompt');
    try {
      return super.editingPrompt(prompt);
    } finally {
      _$_CopilotStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editingUpdatedValue(String value) {
    final _$actionInfo = _$_CopilotStoreActionController.startAction(
        name: '_CopilotStore.editingUpdatedValue');
    try {
      return super.editingUpdatedValue(value);
    } finally {
      _$_CopilotStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic acceptEditing() {
    final _$actionInfo = _$_CopilotStoreActionController.startAction(
        name: '_CopilotStore.acceptEditing');
    try {
      return super.acceptEditing();
    } finally {
      _$_CopilotStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic cancelEditing() {
    final _$actionInfo = _$_CopilotStoreActionController.startAction(
        name: '_CopilotStore.cancelEditing');
    try {
      return super.cancelEditing();
    } finally {
      _$_CopilotStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic regenerateEditing() {
    final _$actionInfo = _$_CopilotStoreActionController.startAction(
        name: '_CopilotStore.regenerateEditing');
    try {
      return super.regenerateEditing();
    } finally {
      _$_CopilotStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isWorkingByLLM: ${isWorkingByLLM},
copilotEditing: ${copilotEditing},
runtimeOptions: ${runtimeOptions},
copilotOptions: ${copilotOptions},
isUseCharacterContext: ${isUseCharacterContext},
isCopilotEditingEnabled: ${isCopilotEditingEnabled},
isSendable: ${isSendable},
isWaitingForUserInput: ${isWaitingForUserInput},
hasNeedConfirmationContent: ${hasNeedConfirmationContent},
hasCopilotEditingContent: ${hasCopilotEditingContent}
    ''';
  }
}
