// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'st2document_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ST2DocumentStore2 on _ST2DocumentStore2, Store {
  Computed<String>? _$titleComputed;

  @override
  String get title => (_$titleComputed ??=
          Computed<String>(() => super.title, name: '_ST2DocumentStore2.title'))
      .value;
  Computed<String>? _$imageFileComputed;

  @override
  String get imageFile =>
      (_$imageFileComputed ??= Computed<String>(() => super.imageFile,
              name: '_ST2DocumentStore2.imageFile'))
          .value;
  Computed<bool>? _$hasFileComputed;

  @override
  bool get hasFile => (_$hasFileComputed ??= Computed<bool>(() => super.hasFile,
          name: '_ST2DocumentStore2.hasFile'))
      .value;
  Computed<bool>? _$hasImageComputed;

  @override
  bool get hasImage =>
      (_$hasImageComputed ??= Computed<bool>(() => super.hasImage,
              name: '_ST2DocumentStore2.hasImage'))
          .value;
  Computed<String>? _$authorComputed;

  @override
  String get author =>
      (_$authorComputed ??= Computed<String>(() => super.author,
              name: '_ST2DocumentStore2.author'))
          .value;
  Computed<ST2CharacterModel>? _$characterComputed;

  @override
  ST2CharacterModel get character => (_$characterComputed ??=
          Computed<ST2CharacterModel>(() => super.character,
              name: '_ST2DocumentStore2.character'))
      .value;
  Computed<ST2CharacterBookModel>? _$bookComputed;

  @override
  ST2CharacterBookModel get book =>
      (_$bookComputed ??= Computed<ST2CharacterBookModel>(() => super.book,
              name: '_ST2DocumentStore2.book'))
          .value;
  Computed<bool>? _$isDirtyComputed;

  @override
  bool get isDirty => (_$isDirtyComputed ??= Computed<bool>(() => super.isDirty,
          name: '_ST2DocumentStore2.isDirty'))
      .value;
  Computed<bool>? _$canUndoComputed;

  @override
  bool get canUndo => (_$canUndoComputed ??= Computed<bool>(() => super.canUndo,
          name: '_ST2DocumentStore2.canUndo'))
      .value;
  Computed<bool>? _$canRedoComputed;

  @override
  bool get canRedo => (_$canRedoComputed ??= Computed<bool>(() => super.canRedo,
          name: '_ST2DocumentStore2.canRedo'))
      .value;

  late final _$originalAtom =
      Atom(name: '_ST2DocumentStore2.original', context: context);

  @override
  ST2DocumentModel get original {
    _$originalAtom.reportRead();
    return super.original;
  }

  @override
  set original(ST2DocumentModel value) {
    _$originalAtom.reportWrite(value, super.original, () {
      super.original = value;
    });
  }

  late final _$modelAtom =
      Atom(name: '_ST2DocumentStore2.model', context: context);

  @override
  ST2DocumentModel get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(ST2DocumentModel value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  late final _$undoListAtom =
      Atom(name: '_ST2DocumentStore2.undoList', context: context);

  @override
  BuiltList<ST2DocumentModel> get undoList {
    _$undoListAtom.reportRead();
    return super.undoList;
  }

  @override
  set undoList(BuiltList<ST2DocumentModel> value) {
    _$undoListAtom.reportWrite(value, super.undoList, () {
      super.undoList = value;
    });
  }

  late final _$redoListAtom =
      Atom(name: '_ST2DocumentStore2.redoList', context: context);

  @override
  BuiltList<ST2DocumentModel> get redoList {
    _$redoListAtom.reportRead();
    return super.redoList;
  }

  @override
  set redoList(BuiltList<ST2DocumentModel> value) {
    _$redoListAtom.reportWrite(value, super.redoList, () {
      super.redoList = value;
    });
  }

  late final _$filenameAtom =
      Atom(name: '_ST2DocumentStore2.filename', context: context);

  @override
  String? get filename {
    _$filenameAtom.reportRead();
    return super.filename;
  }

  @override
  set filename(String? value) {
    _$filenameAtom.reportWrite(value, super.filename, () {
      super.filename = value;
    });
  }

  late final _$fillModelWithChatBuilderAsyncAction = AsyncAction(
      '_ST2DocumentStore2.fillModelWithChatBuilder',
      context: context);

  @override
  Future fillModelWithChatBuilder() {
    return _$fillModelWithChatBuilderAsyncAction
        .run(() => super.fillModelWithChatBuilder());
  }

  late final _$saveAutoAsyncAction =
      AsyncAction('_ST2DocumentStore2.saveAuto', context: context);

  @override
  Future<bool> saveAuto() {
    return _$saveAutoAsyncAction.run(() => super.saveAuto());
  }

  late final _$saveAsyncAction =
      AsyncAction('_ST2DocumentStore2.save', context: context);

  @override
  Future<bool> save(String filename) {
    return _$saveAsyncAction.run(() => super.save(filename));
  }

  late final _$_ST2DocumentStore2ActionController =
      ActionController(name: '_ST2DocumentStore2', context: context);

  @override
  void recordHistory(ST2DocumentModel Function(ST2DocumentModel) updater) {
    final _$actionInfo = _$_ST2DocumentStore2ActionController.startAction(
        name: '_ST2DocumentStore2.recordHistory');
    try {
      return super.recordHistory(updater);
    } finally {
      _$_ST2DocumentStore2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  void update(ST2DocumentModel Function(ST2DocumentModel) updater,
      {bool undoable = false}) {
    final _$actionInfo = _$_ST2DocumentStore2ActionController.startAction(
        name: '_ST2DocumentStore2.update');
    try {
      return super.update(updater, undoable: undoable);
    } finally {
      _$_ST2DocumentStore2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  void undo() {
    final _$actionInfo = _$_ST2DocumentStore2ActionController.startAction(
        name: '_ST2DocumentStore2.undo');
    try {
      return super.undo();
    } finally {
      _$_ST2DocumentStore2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  void redo() {
    final _$actionInfo = _$_ST2DocumentStore2ActionController.startAction(
        name: '_ST2DocumentStore2.redo');
    try {
      return super.redo();
    } finally {
      _$_ST2DocumentStore2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateCharacter(ST2CharacterModel character) {
    final _$actionInfo = _$_ST2DocumentStore2ActionController.startAction(
        name: '_ST2DocumentStore2.updateCharacter');
    try {
      return super.updateCharacter(character);
    } finally {
      _$_ST2DocumentStore2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateCharacterBook(ST2CharacterBookModel characterBook) {
    final _$actionInfo = _$_ST2DocumentStore2ActionController.startAction(
        name: '_ST2DocumentStore2.updateCharacterBook');
    try {
      return super.updateCharacterBook(characterBook);
    } finally {
      _$_ST2DocumentStore2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
original: ${original},
model: ${model},
undoList: ${undoList},
redoList: ${redoList},
filename: ${filename},
title: ${title},
imageFile: ${imageFile},
hasFile: ${hasFile},
hasImage: ${hasImage},
author: ${author},
character: ${character},
book: ${book},
isDirty: ${isDirty},
canUndo: ${canUndo},
canRedo: ${canRedo}
    ''';
  }
}

mixin _$ST2CharacterStore2 on _ST2CharacterStore2, Store {
  Computed<String>? _$authorComputed;

  @override
  String get author =>
      (_$authorComputed ??= Computed<String>(() => super.author,
              name: '_ST2CharacterStore2.author'))
          .value;
  Computed<String>? _$imageFileComputed;

  @override
  String get imageFile =>
      (_$imageFileComputed ??= Computed<String>(() => super.imageFile,
              name: '_ST2CharacterStore2.imageFile'))
          .value;
  Computed<String>? _$nameComputed;

  @override
  String get name => (_$nameComputed ??=
          Computed<String>(() => super.name, name: '_ST2CharacterStore2.name'))
      .value;
  Computed<int>? _$nameTokenCountComputed;

  @override
  int get nameTokenCount =>
      (_$nameTokenCountComputed ??= Computed<int>(() => super.nameTokenCount,
              name: '_ST2CharacterStore2.nameTokenCount'))
          .value;
  Computed<String>? _$descriptionComputed;

  @override
  String get description =>
      (_$descriptionComputed ??= Computed<String>(() => super.description,
              name: '_ST2CharacterStore2.description'))
          .value;
  Computed<int>? _$descriptionTokenCountComputed;

  @override
  int get descriptionTokenCount => (_$descriptionTokenCountComputed ??=
          Computed<int>(() => super.descriptionTokenCount,
              name: '_ST2CharacterStore2.descriptionTokenCount'))
      .value;
  Computed<String>? _$personalityComputed;

  @override
  String get personality =>
      (_$personalityComputed ??= Computed<String>(() => super.personality,
              name: '_ST2CharacterStore2.personality'))
          .value;
  Computed<int>? _$personalityTokenCountComputed;

  @override
  int get personalityTokenCount => (_$personalityTokenCountComputed ??=
          Computed<int>(() => super.personalityTokenCount,
              name: '_ST2CharacterStore2.personalityTokenCount'))
      .value;
  Computed<String>? _$scenarioComputed;

  @override
  String get scenario =>
      (_$scenarioComputed ??= Computed<String>(() => super.scenario,
              name: '_ST2CharacterStore2.scenario'))
          .value;
  Computed<int>? _$scenarioTokenCountComputed;

  @override
  int get scenarioTokenCount => (_$scenarioTokenCountComputed ??= Computed<int>(
          () => super.scenarioTokenCount,
          name: '_ST2CharacterStore2.scenarioTokenCount'))
      .value;
  Computed<String>? _$mesExampleComputed;

  @override
  String get mesExample =>
      (_$mesExampleComputed ??= Computed<String>(() => super.mesExample,
              name: '_ST2CharacterStore2.mesExample'))
          .value;
  Computed<String>? _$creatorNotesComputed;

  @override
  String get creatorNotes =>
      (_$creatorNotesComputed ??= Computed<String>(() => super.creatorNotes,
              name: '_ST2CharacterStore2.creatorNotes'))
          .value;
  Computed<String>? _$systemPromptComputed;

  @override
  String get systemPrompt =>
      (_$systemPromptComputed ??= Computed<String>(() => super.systemPrompt,
              name: '_ST2CharacterStore2.systemPrompt'))
          .value;
  Computed<String>? _$postHistoryInstructionsComputed;

  @override
  String get postHistoryInstructions => (_$postHistoryInstructionsComputed ??=
          Computed<String>(() => super.postHistoryInstructions,
              name: '_ST2CharacterStore2.postHistoryInstructions'))
      .value;
  Computed<int>? _$mesExampleTokenCountComputed;

  @override
  int get mesExampleTokenCount => (_$mesExampleTokenCountComputed ??=
          Computed<int>(() => super.mesExampleTokenCount,
              name: '_ST2CharacterStore2.mesExampleTokenCount'))
      .value;
  Computed<BuiltList<GreetingMes>>? _$greetingMesComputed;

  @override
  BuiltList<GreetingMes> get greetingMes => (_$greetingMesComputed ??=
          Computed<BuiltList<GreetingMes>>(() => super.greetingMes,
              name: '_ST2CharacterStore2.greetingMes'))
      .value;
  Computed<bool>? _$hasPromptForImageComputed;

  @override
  bool get hasPromptForImage => (_$hasPromptForImageComputed ??= Computed<bool>(
          () => super.hasPromptForImage,
          name: '_ST2CharacterStore2.hasPromptForImage'))
      .value;
  Computed<String>? _$characterBasicDescriptionComputed;

  @override
  String get characterBasicDescription =>
      (_$characterBasicDescriptionComputed ??= Computed<String>(
              () => super.characterBasicDescription,
              name: '_ST2CharacterStore2.characterBasicDescription'))
          .value;

  late final _$promptForImageAtom =
      Atom(name: '_ST2CharacterStore2.promptForImage', context: context);

  @override
  String get promptForImage {
    _$promptForImageAtom.reportRead();
    return super.promptForImage;
  }

  @override
  set promptForImage(String value) {
    _$promptForImageAtom.reportWrite(value, super.promptForImage, () {
      super.promptForImage = value;
    });
  }

  late final _$generateCharacterImagePromptsAsyncAction = AsyncAction(
      '_ST2CharacterStore2.generateCharacterImagePrompts',
      context: context);

  @override
  Future<String> generateCharacterImagePrompts({bool forceRegen = false}) {
    return _$generateCharacterImagePromptsAsyncAction
        .run(() => super.generateCharacterImagePrompts(forceRegen: forceRegen));
  }

  late final _$_ST2CharacterStore2ActionController =
      ActionController(name: '_ST2CharacterStore2', context: context);

  @override
  void updateImageFile(String filePath) {
    final _$actionInfo = _$_ST2CharacterStore2ActionController.startAction(
        name: '_ST2CharacterStore2.updateImageFile');
    try {
      return super.updateImageFile(filePath);
    } finally {
      _$_ST2CharacterStore2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateAuthor(String author, String? originalValue) {
    final _$actionInfo = _$_ST2CharacterStore2ActionController.startAction(
        name: '_ST2CharacterStore2.updateAuthor');
    try {
      return super.updateAuthor(author, originalValue);
    } finally {
      _$_ST2CharacterStore2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  void recordHistory(ST2CharacterModel Function(ST2CharacterModel) updater) {
    final _$actionInfo = _$_ST2CharacterStore2ActionController.startAction(
        name: '_ST2CharacterStore2.recordHistory');
    try {
      return super.recordHistory(updater);
    } finally {
      _$_ST2CharacterStore2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  void update(ST2CharacterModel Function(ST2CharacterModel) updater,
      {bool undoable = false}) {
    final _$actionInfo = _$_ST2CharacterStore2ActionController.startAction(
        name: '_ST2CharacterStore2.update');
    try {
      return super.update(updater, undoable: undoable);
    } finally {
      _$_ST2CharacterStore2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
promptForImage: ${promptForImage},
author: ${author},
imageFile: ${imageFile},
name: ${name},
nameTokenCount: ${nameTokenCount},
description: ${description},
descriptionTokenCount: ${descriptionTokenCount},
personality: ${personality},
personalityTokenCount: ${personalityTokenCount},
scenario: ${scenario},
scenarioTokenCount: ${scenarioTokenCount},
mesExample: ${mesExample},
creatorNotes: ${creatorNotes},
systemPrompt: ${systemPrompt},
postHistoryInstructions: ${postHistoryInstructions},
mesExampleTokenCount: ${mesExampleTokenCount},
greetingMes: ${greetingMes},
hasPromptForImage: ${hasPromptForImage},
characterBasicDescription: ${characterBasicDescription}
    ''';
  }
}

mixin _$ST2CharacterBookStore2 on _ST2CharacterBookStore2, Store {
  Computed<bool>? _$recursiveScanningComputed;

  @override
  bool get recursiveScanning => (_$recursiveScanningComputed ??= Computed<bool>(
          () => super.recursiveScanning,
          name: '_ST2CharacterBookStore2.recursiveScanning'))
      .value;
  Computed<int>? _$scanDepthComputed;

  @override
  int get scanDepth =>
      (_$scanDepthComputed ??= Computed<int>(() => super.scanDepth,
              name: '_ST2CharacterBookStore2.scanDepth'))
          .value;

  late final _$_ST2CharacterBookStore2ActionController =
      ActionController(name: '_ST2CharacterBookStore2', context: context);

  @override
  void update(ST2CharacterBookModel Function(ST2CharacterBookModel) updater,
      {bool undoable = false}) {
    final _$actionInfo = _$_ST2CharacterBookStore2ActionController.startAction(
        name: '_ST2CharacterBookStore2.update');
    try {
      return super.update(updater, undoable: undoable);
    } finally {
      _$_ST2CharacterBookStore2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  void recordHistory(
      ST2CharacterBookModel Function(ST2CharacterBookModel) updater) {
    final _$actionInfo = _$_ST2CharacterBookStore2ActionController.startAction(
        name: '_ST2CharacterBookStore2.recordHistory');
    try {
      return super.recordHistory(updater);
    } finally {
      _$_ST2CharacterBookStore2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBookEntryExpanded(String id, bool isExpanded) {
    final _$actionInfo = _$_ST2CharacterBookStore2ActionController.startAction(
        name: '_ST2CharacterBookStore2.setBookEntryExpanded');
    try {
      return super.setBookEntryExpanded(id, isExpanded);
    } finally {
      _$_ST2CharacterBookStore2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
recursiveScanning: ${recursiveScanning},
scanDepth: ${scanDepth}
    ''';
  }
}

mixin _$ST2CharacterBookEntryStore2 on _ST2CharacterBookEntryStore2, Store {
  Computed<String>? _$titleStringComputed;

  @override
  String get titleString =>
      (_$titleStringComputed ??= Computed<String>(() => super.titleString,
              name: '_ST2CharacterBookEntryStore2.titleString'))
          .value;

  late final _$_ST2CharacterBookEntryStore2ActionController =
      ActionController(name: '_ST2CharacterBookEntryStore2', context: context);

  @override
  void setEntryExpanded(bool isExpanded) {
    final _$actionInfo = _$_ST2CharacterBookEntryStore2ActionController
        .startAction(name: '_ST2CharacterBookEntryStore2.setEntryExpanded');
    try {
      return super.setEntryExpanded(isExpanded);
    } finally {
      _$_ST2CharacterBookEntryStore2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  void recordHistory(
      ST2CharacterBookEntryModel Function(ST2CharacterBookEntryModel) updater) {
    final _$actionInfo = _$_ST2CharacterBookEntryStore2ActionController
        .startAction(name: '_ST2CharacterBookEntryStore2.recordHistory');
    try {
      return super.recordHistory(updater);
    } finally {
      _$_ST2CharacterBookEntryStore2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  void update(
      ST2CharacterBookEntryModel Function(ST2CharacterBookEntryModel) updater,
      {bool undoable = false}) {
    final _$actionInfo = _$_ST2CharacterBookEntryStore2ActionController
        .startAction(name: '_ST2CharacterBookEntryStore2.update');
    try {
      return super.update(updater, undoable: undoable);
    } finally {
      _$_ST2CharacterBookEntryStore2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
titleString: ${titleString}
    ''';
  }
}

mixin _$ST2CharacterBookEntriesStore on _ST2CharacterBookEntriesStore, Store {
  Computed<BuiltList<ST2CharacterBookEntryModel>>? _$entriesComputed;

  @override
  BuiltList<ST2CharacterBookEntryModel> get entries => (_$entriesComputed ??=
          Computed<BuiltList<ST2CharacterBookEntryModel>>(() => super.entries,
              name: '_ST2CharacterBookEntriesStore.entries'))
      .value;

  late final _$_ST2CharacterBookEntriesStoreActionController =
      ActionController(name: '_ST2CharacterBookEntriesStore', context: context);

  @override
  void update(ST2CharacterBookEntryModel entry) {
    final _$actionInfo = _$_ST2CharacterBookEntriesStoreActionController
        .startAction(name: '_ST2CharacterBookEntriesStore.update');
    try {
      return super.update(entry);
    } finally {
      _$_ST2CharacterBookEntriesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void recordHistory(
      BuiltList<ST2CharacterBookEntryModel> Function(
              BuiltList<ST2CharacterBookEntryModel>)
          updater) {
    final _$actionInfo = _$_ST2CharacterBookEntriesStoreActionController
        .startAction(name: '_ST2CharacterBookEntriesStore.recordHistory');
    try {
      return super.recordHistory(updater);
    } finally {
      _$_ST2CharacterBookEntriesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeEntry(int index) {
    final _$actionInfo = _$_ST2CharacterBookEntriesStoreActionController
        .startAction(name: '_ST2CharacterBookEntriesStore.removeEntry');
    try {
      return super.removeEntry(index);
    } finally {
      _$_ST2CharacterBookEntriesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeEntryById(String id) {
    final _$actionInfo = _$_ST2CharacterBookEntriesStoreActionController
        .startAction(name: '_ST2CharacterBookEntriesStore.removeEntryById');
    try {
      return super.removeEntryById(id);
    } finally {
      _$_ST2CharacterBookEntriesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void insertEntry(int index, ST2CharacterBookEntryModel entry) {
    final _$actionInfo = _$_ST2CharacterBookEntriesStoreActionController
        .startAction(name: '_ST2CharacterBookEntriesStore.insertEntry');
    try {
      return super.insertEntry(index, entry);
    } finally {
      _$_ST2CharacterBookEntriesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addEntry(ST2CharacterBookEntryModel entry) {
    final _$actionInfo = _$_ST2CharacterBookEntriesStoreActionController
        .startAction(name: '_ST2CharacterBookEntriesStore.addEntry');
    try {
      return super.addEntry(entry);
    } finally {
      _$_ST2CharacterBookEntriesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateEntry(String id, ST2CharacterBookEntryModel entry,
      {bool undoable = false}) {
    final _$actionInfo = _$_ST2CharacterBookEntriesStoreActionController
        .startAction(name: '_ST2CharacterBookEntriesStore.updateEntry');
    try {
      return super.updateEntry(id, entry, undoable: undoable);
    } finally {
      _$_ST2CharacterBookEntriesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
entries: ${entries}
    ''';
  }
}

mixin _$ST2CharacterGreetingsStore on _ST2CharacterGreetingsStore, Store {
  Computed<BuiltList<GreetingMes>>? _$greetingMesComputed;

  @override
  BuiltList<GreetingMes> get greetingMes => (_$greetingMesComputed ??=
          Computed<BuiltList<GreetingMes>>(() => super.greetingMes,
              name: '_ST2CharacterGreetingsStore.greetingMes'))
      .value;

  late final _$_ST2CharacterGreetingsStoreActionController =
      ActionController(name: '_ST2CharacterGreetingsStore', context: context);

  @override
  bool removeGreetings(int index) {
    final _$actionInfo = _$_ST2CharacterGreetingsStoreActionController
        .startAction(name: '_ST2CharacterGreetingsStore.removeGreetings');
    try {
      return super.removeGreetings(index);
    } finally {
      _$_ST2CharacterGreetingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  GreetingMes insertGreetings(int index, String mes) {
    final _$actionInfo = _$_ST2CharacterGreetingsStoreActionController
        .startAction(name: '_ST2CharacterGreetingsStore.insertGreetings');
    try {
      return super.insertGreetings(index, mes);
    } finally {
      _$_ST2CharacterGreetingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addGreeting(String mes) {
    final _$actionInfo = _$_ST2CharacterGreetingsStoreActionController
        .startAction(name: '_ST2CharacterGreetingsStore.addGreeting');
    try {
      return super.addGreeting(mes);
    } finally {
      _$_ST2CharacterGreetingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void recordHistory(int index, String mes) {
    final _$actionInfo = _$_ST2CharacterGreetingsStoreActionController
        .startAction(name: '_ST2CharacterGreetingsStore.recordHistory');
    try {
      return super.recordHistory(index, mes);
    } finally {
      _$_ST2CharacterGreetingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateGreetings(int index, String mes) {
    final _$actionInfo = _$_ST2CharacterGreetingsStoreActionController
        .startAction(name: '_ST2CharacterGreetingsStore.updateGreetings');
    try {
      return super.updateGreetings(index, mes);
    } finally {
      _$_ST2CharacterGreetingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
greetingMes: ${greetingMes}
    ''';
  }
}
