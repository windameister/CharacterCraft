import 'package:built_collection/built_collection.dart';
import 'package:editor/editor/editor_store.dart';
import 'package:editor/character/model/st2document_model.dart';
import 'package:editor/character/repository/st2_repository.dart';
import 'package:editor/chat/chat_builder.dart';
import 'package:editor/chat/llm_connection.dart';
import 'package:editor/chat/dialog_message.dart';
import 'package:editor/util/path_extensions.dart';
import 'package:editor/util/token_extension.dart';
import 'package:logging/logging.dart';
import 'package:mobx/mobx.dart';
import 'package:editor/find_service.dart';
import 'package:editor/sillytavern/st2format.dart';
import './st2character_model.dart';
import './st2characterbook_model.dart';

part 'st2document_store.g.dart';

final _logger = Logger('ST2DocumentStore2');

class ST2DocumentStore2 extends _ST2DocumentStore2 with _$ST2DocumentStore2 {
  ST2DocumentStore2({required super.model, super.filename, required super.editorStore});

  ST2DocumentStore2.empty(EditorStore editorStore)
      : this(
          model: ST2DocumentModel.empty(author: editorStore.editorRuntimeOptions.author),
          editorStore: editorStore,
        );

  ST2DocumentStore2.fromFile(String filename, EditorStore editorStore)
      : this(
          model: ST2DocumentModel.fromSpec(
            spec: ST2Spec.loadStCardSync(filename),
            imageFile: filename,
          ),
          filename: filename,
          editorStore: editorStore,
        );

  static Future<ST2DocumentStore2?> loadFromFile(String filename, EditorStore editorStore) async {
    final spec = await ST2Spec.fromTavernSpecv2(filename);
    return ST2DocumentStore2(
      model: ST2DocumentModel.fromSpec(
        spec: spec,
        imageFile: filename,
      ),
      filename: filename,
      editorStore: editorStore,
    );
  }
}

abstract class _ST2DocumentStore2 with Store {
  @observable
  ST2DocumentModel original;

  @observable
  ST2DocumentModel model;

  // note a history array to store history model data
  @observable
  BuiltList<ST2DocumentModel> undoList;

  @observable
  BuiltList<ST2DocumentModel> redoList;

  @observable
  String? filename;

  @computed
  String get title => filename?.basename ?? 'Untitled';

  @computed
  String get imageFile => model.imageFile;

  @computed
  bool get hasFile => filename != null;

  @computed
  bool get hasImage => imageFile.isNotEmpty;

  @computed
  String get author => model.author;

  @computed
  ST2CharacterModel get character => model.character;

  @computed
  ST2CharacterBookModel get book => model.characterBook;

  @computed
  bool get isDirty => model != original;

  @computed
  bool get canUndo => undoList.isNotEmpty;

  @computed
  bool get canRedo => redoList.isNotEmpty;

  final EditorStore editorStore;

  late ChatBuilder chatBuilder;

  _ST2DocumentStore2({required this.model, this.filename, required this.editorStore})
      : original = model,
        undoList = BuiltList.of([]),
        redoList = BuiltList.of([]) {
    chatBuilder = ChatBuilder(parent: this as ST2DocumentStore2, editorStore: editorStore);
  }

  @action
  fillModelWithChatBuilder() async {
    final ret = await chatBuilder.generateCharacterSpecsWithChattingHistory();
    _logger.info('fillModelWithChatBuilder: $ret');
    try {
      final st2Data = ST2Data.fromJson(ret);
      _logger.info('fillModelWithChatBuilder: $st2Data');

      update((p0) => p0.copyWith(character: ST2CharacterModel.fromSpec(data: st2Data)),
          undoable: true);
    } catch (e) {
      _logger.warning('fillModelWithChatBuilder: $e');
    }
  }

  @action
  void recordHistory(ST2DocumentModel Function(ST2DocumentModel) updater) {
    undoList = undoList.rebuild((p0) => p0..add(updater(model)));
    _logger.info("model updated: undoList size: ${undoList.length}, can undo: $canUndo");
  }

  @action
  void update(ST2DocumentModel Function(ST2DocumentModel) updater, {bool undoable = false}) {
    final before = model;

    model = updater(model);

    if (undoable && before != model) {
      recordHistory((v) => v);
    }

    if (redoList.isNotEmpty) {
      redoList = BuiltList.of([]);
    }
  }

  @action
  void undo() {
    if (canUndo) {
      // record current state.
      redoList = redoList.rebuild((p0) => p0..add(model));

      // move to previous state.
      final builder = undoList.toBuilder();
      final last = builder.removeLast();
      undoList = builder.build();
      model = last;
      _logger.info(
          "model undo: undoList size: ${undoList.length}, can undo: $canUndo, redoList size: ${redoList.length}, can redo: $canRedo");
    }
  }

  @action
  void redo() {
    if (canRedo) {
      // record current state.
      undoList = undoList.rebuild((p0) => p0..add(model));

      // move to next state.
      final builder = redoList.toBuilder();
      final last = builder.removeLast();
      redoList = builder.build();
      model = last;
      _logger.info(
          "model redo: undoList size: ${undoList.length}, can undo: $canUndo, redoList size: ${redoList.length}, can redo: $canRedo");
    }
  }

  @action
  void updateCharacter(ST2CharacterModel character) {
    update((p0) => p0.copyWith(character: character));
  }

  @action
  void updateCharacterBook(ST2CharacterBookModel characterBook) {
    update((p0) => p0.copyWith(characterBook: characterBook));
  }

  @action
  Future<bool> saveAuto() async {
    if (isDirty && filename != null) {
      return save(filename!);
    }
    // skip the saving...
    return true;
  }

  @action
  Future<bool> save(String filename) async {
    ST2Repository repo = findService();
    final ret = await repo.saveDocumentToFile(model, filename);
    if (ret) {
      original = model;
    }
    _logger.info('save: $filename, $ret, $isDirty, test not equal(isDirty:): ${model != original}');
    return ret;
  }

  @override
  Future<bool> saveAsFile(String filename) async {
    return save(filename);
  }

  dynamic getProperty(String pathName) {}
}

class ST2CharacterStore2 = _ST2CharacterStore2 with _$ST2CharacterStore2;

abstract class _ST2CharacterStore2 with Store {
  final ST2DocumentStore2 parent;

  _ST2CharacterStore2({required this.parent}) : promptForImage = '';

  ST2CharacterModel get character => parent.character;

  @computed
  String get author => parent.author;

  @computed
  String get imageFile => parent.imageFile;

  @computed
  String get name => character.name;

  @computed
  int get nameTokenCount => character.name.getTokenCount();

  @computed
  String get description => character.description;

  @computed
  int get descriptionTokenCount => character.description.getTokenCount();

  @computed
  String get personality => character.personality;

  @computed
  int get personalityTokenCount => character.personality.getTokenCount();

  @computed
  String get scenario => character.scenario;

  @computed
  int get scenarioTokenCount => character.scenario.getTokenCount();

  @computed
  String get mesExample => character.mesExample;

  @computed
  String get creatorNotes => character.creatorNotes;

  @computed
  String get systemPrompt => character.systemPrompt;

  @computed
  String get postHistoryInstructions => character.postHistoryInstructions;

  @computed
  int get mesExampleTokenCount => character.mesExample.getTokenCount();

  @computed
  BuiltList<GreetingMes> get greetingMes => character.greetingMes;

  @observable
  String promptForImage;

  @computed
  bool get hasPromptForImage => promptForImage.isNotEmpty;

  @computed
  String get characterBasicDescription => """Character: $name
$description
$personality
$scenario
${greetingMes.first.mes}
""";

  @action
  Future<String> generateCharacterImagePrompts({bool forceRegen = false}) async {
    if (forceRegen) {
      promptForImage = '';
    }

    if (promptForImage.isNotEmpty) {
      return promptForImage;
    }

    final prompt =
        """Given the detailed description of a virtual character named '$name', please extract the key visual elements. 
```
$description
$personality
$scenario
${greetingMes.first.mes}
```
Based on these details, generate a instruction to create a visual representation of $name (especially a photo or image), consider [his/her/their] appearance, 
[his/her/their] attire, [his/her/their] weapon/item, and the environment (background) in which [he/she/they] exists. Combine all the information to a single paragraph of visual description.""";

    final ret = await LLMOpenAI(config: parent.editorStore.openaiConfig)
        .chatCompletion([DialogMessage.system(message: prompt)]);
    if (ret == null) {
      return '';
    }

    _logger.info('generateCharacterSpecs: $ret');
    promptForImage = ret.message;
    return ret.message;
  }

  @action
  void updateImageFile(String filePath) {
    parent.update((data) => data.copyWith(imageFile: filePath), undoable: true);
  }

  @action
  void updateAuthor(String author, String? originalValue) {
    if (originalValue != null) {
      parent.recordHistory((p0) => p0.copyWith(author: originalValue));
    }

    parent.update((data) => data.copyWith(author: author), undoable: false);
  }

  @action
  void recordHistory(ST2CharacterModel Function(ST2CharacterModel) updater) {
    parent.recordHistory((data) => data.copyWith(character: updater(character)));
  }

  @action
  void update(ST2CharacterModel Function(ST2CharacterModel) updater, {bool undoable = false}) {
    parent.update((data) => data.copyWith(character: updater(character)), undoable: undoable);
  }
}

class ST2CharacterBookStore2 = _ST2CharacterBookStore2 with _$ST2CharacterBookStore2;

abstract class _ST2CharacterBookStore2 with Store {
  final ST2DocumentStore2 parent;

  _ST2CharacterBookStore2({required this.parent});

  ST2CharacterBookModel get book => parent.book;

  @computed
  bool get recursiveScanning => book.recursiveScanning;

  @computed
  int get scanDepth => book.scanDepth;

  @action
  void update(ST2CharacterBookModel Function(ST2CharacterBookModel) updater,
      {bool undoable = false}) {
    parent.update((data) => data.copyWith(characterBook: updater(book)), undoable: undoable);
  }

  @action
  void recordHistory(ST2CharacterBookModel Function(ST2CharacterBookModel) updater) {
    parent.recordHistory((data) => data.copyWith(characterBook: updater(book)));
  }

  // used for ui state...
  Map<String, bool> bookEntriesExpanded = {};

  @action
  void setBookEntryExpanded(String id, bool isExpanded) {
    bookEntriesExpanded[id] = isExpanded;
  }

  bool isBookEntryExpanded(String id) {
    return bookEntriesExpanded[id] == true;
  }
}

class ST2CharacterBookEntryStore2 = _ST2CharacterBookEntryStore2 with _$ST2CharacterBookEntryStore2;

abstract class _ST2CharacterBookEntryStore2 with Store {
  final ST2CharacterBookEntriesStore parent;
  final String id;

  _ST2CharacterBookEntryStore2({required this.parent, required this.id});

  ST2CharacterBookEntryModel get entry =>
      parent.entries.firstWhere((p0) => p0.id == id, orElse: () {
        _logger.warning('entry not found: $id');
        return ST2CharacterBookEntryModel.empty();
      });

  @computed
  String get titleString => entry.titleString;

  @action
  void setEntryExpanded(bool isExpanded) {
    parent.setEntryExpanded(id, isExpanded);
  }

  bool isEntryExpanded() {
    return parent.isEntryExpanded(id);
  }

  @action
  void recordHistory(ST2CharacterBookEntryModel Function(ST2CharacterBookEntryModel) updater) {
    final model = updater(entry);
    final index = parent.entries.indexWhere((p0) => p0.id == id);
    assert(index >= 0, 'recordHistory: index >= 0');
    parent.recordHistory((data) => data.rebuild((p0) => p0..[index] = model));
  }

  @action
  void update(ST2CharacterBookEntryModel Function(ST2CharacterBookEntryModel) updater,
      {bool undoable = false}) {
    parent.updateEntry(id, updater(entry), undoable: undoable);
  }
}

class ST2CharacterBookEntriesStore = _ST2CharacterBookEntriesStore
    with _$ST2CharacterBookEntriesStore;

abstract class _ST2CharacterBookEntriesStore with Store {
  final ST2CharacterBookStore2 parent;

  _ST2CharacterBookEntriesStore({required this.parent});

  @computed
  BuiltList<ST2CharacterBookEntryModel> get entries => parent.book.entries;

  @action
  void update(ST2CharacterBookEntryModel entry) {
    final index = entries.indexWhere((p0) => p0.id == entry.id);
    assert(index >= 0, 'update: index >= 0');
    final updatedEntries = entries.rebuild((p0) => p0..[index] = entry);
    parent.update((data) => data.copyWith(entries: updatedEntries));
  }

  @action
  void recordHistory(
      BuiltList<ST2CharacterBookEntryModel> Function(BuiltList<ST2CharacterBookEntryModel>)
          updater) {
    parent.recordHistory((data) => data.copyWith(entries: updater(entries)));
  }

  void setEntryExpanded(String id, bool isExpanded) {
    parent.setBookEntryExpanded(id, isExpanded);
  }

  bool isEntryExpanded(String id) {
    return parent.isBookEntryExpanded(id);
  }

  @action
  void removeEntry(int index) {
    final updatedEntries = entries.rebuild((p0) => p0..removeAt(index));
    parent.update((data) => data.copyWith(entries: updatedEntries), undoable: true);
    _logger.info('removeEntry: $index, entries after removing: ${entries.length}');
  }

  @action
  void removeEntryById(String id) {
    final index = entries.indexWhere((p0) => p0.id == id);
    assert(index >= 0, 'removeEntryById: index >= 0');
    removeEntry(index);
  }

  @action
  void insertEntry(int index, ST2CharacterBookEntryModel entry) {
    final updatedEntries = entries.rebuild((p0) => p0..insert(index, entry));
    parent.update((data) => data.copyWith(entries: updatedEntries), undoable: true);
    setEntryExpanded(entry.id, true);
  }

  @action
  void addEntry(ST2CharacterBookEntryModel entry) {
    final updatedEntries = entries.rebuild((p0) => p0..add(entry));
    parent.update((data) => data.copyWith(entries: updatedEntries), undoable: true);
    setEntryExpanded(entry.id, true);
  }

  @action
  void updateEntry(String id, ST2CharacterBookEntryModel entry, {bool undoable = false}) {
    final index = entries.indexWhere((p0) => p0.id == id);
    assert(index >= 0, 'updateEntry: index >= 0');
    final updatedEntries = entries.rebuild((p0) => p0..[index] = entry);
    parent.update((data) => data.copyWith(entries: updatedEntries), undoable: undoable);
  }
}

class ST2CharacterGreetingsStore = _ST2CharacterGreetingsStore with _$ST2CharacterGreetingsStore;

abstract class _ST2CharacterGreetingsStore with Store {
  final ST2CharacterStore2 parent;

  _ST2CharacterGreetingsStore({required this.parent});

  @computed
  BuiltList<GreetingMes> get greetingMes => parent.greetingMes;

  @action
  bool removeGreetings(int index) {
    // skip removing empty last mes
    if (greetingMes.length - 1 == index && greetingMes[index].isEmpty) {
      return false;
    }

    final updatedGreetings = greetingMes.rebuild((mes) {
      mes.removeAt(index);
      if (mes.isEmpty || !mes.last.isEmpty) {
        mes.add(GreetingMes.empty());
      }
    });
    parent.update((data) => data.copyWith(greetingMes: updatedGreetings), undoable: true);
    return true;
  }

  @action
  GreetingMes insertGreetings(int index, String mes) {
    final data = GreetingMes.fromMes(mes);
    final updatedGreetings = greetingMes.rebuild((p0) => p0..insert(index, data));
    parent.update((data) => data.copyWith(greetingMes: updatedGreetings), undoable: true);
    return data;
  }

  @action
  void addGreeting(String mes) {
    final updatedGreetings = greetingMes.rebuild((p0) => p0..add(GreetingMes.fromMes(mes)));
    parent.update((data) => data.copyWith(greetingMes: updatedGreetings), undoable: true);
  }

  @action
  void recordHistory(int index, String mes) {
    final updatedGreetings = greetingMes.rebuild((p0) {
      p0[index] = p0[index].copyWith(mes: mes);
      p0.removeWhere((mes) => mes != p0.last && mes.isEmpty);
      if (!p0.last.isEmpty) {
        p0.add(GreetingMes.empty());
      }
      return p0;
    });

    parent.recordHistory((data) => data.copyWith(greetingMes: updatedGreetings));
  }

  @action
  void updateGreetings(int index, String mes) {
    final updatedGreetings = greetingMes.rebuild((p0) {
      p0[index] = p0[index].copyWith(mes: mes);
      p0.removeWhere((mes) => mes != p0.last && mes.isEmpty);
      if (!p0.last.isEmpty) {
        p0.add(GreetingMes.empty());
      }
      return p0;
    });

    parent.update((data) => data.copyWith(greetingMes: updatedGreetings),
        undoable: updatedGreetings.length != greetingMes.length);
  }
}
