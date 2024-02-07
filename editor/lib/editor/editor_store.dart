import 'dart:async';
import 'dart:io';
import 'package:editor/editor/directory_content.dart';
import 'package:editor/editor/editor_runtime_options.dart';
import 'package:editor/editor_preferences.dart';
import 'package:editor/util/has_disposable.dart';
import 'package:editor/app_preferences.dart';
import 'package:logging/logging.dart';
import 'package:openai_api/openai_api.dart';
import 'package:mobx/mobx.dart';

part 'editor_store.g.dart';

final _logger = Logger('EditorStore');

class EditorStore = _EditorStore with _$EditorStore;

abstract class _EditorStore with Store, HasDisposable {
  EditorPreference editorPreference;
  AiConnectionPreference aiConnectionPreference;

  @observable
  late EditorRuntimeOptions editorRuntimeOptions;

  @computed
  bool get isCopilotEnabled => editorRuntimeOptions.copilotOptions.copilotEnabled;

  @computed
  bool get isCopilotUseCharacterContext =>
      editorRuntimeOptions.copilotOptions.copilotUseCharacterContext;

  @computed
  String get workingDir => editorRuntimeOptions.workingDirectory.isEmpty
      ? Directory.current.path
      : editorRuntimeOptions.workingDirectory;

  @computed
  String get model => editorRuntimeOptions.openaiOptions.model;

  @computed
  OpenaiConfig? get openaiConfig => editorRuntimeOptions.aiConnectionOption.whenOrNull(
        openAi: (apiKey, organizationId, baseUrl) => OpenaiConfig(
          apiKey: apiKey,
          organizationId: organizationId,
          apiBaseUrl: baseUrl,
        ),
      );

  @computed
  String get aiConnectionStatus {
    final basic = editorRuntimeOptions.aiConnectionOption.whenOrNull(
      openAi: (apiKey, organizationId, baseUrl) => "OpenAI",
    );

    if (basic == null) {
      return "Not Connected";
    }

    return "$basic, ${editorRuntimeOptions.openaiOptions.model}";
  }

  @computed
  bool get aiConnectionReady =>
      editorRuntimeOptions.aiConnectionOption.whenOrNull(
        openAi: (apiKey, organizationId, baseUrl) => apiKey.isNotEmpty && baseUrl.isNotEmpty,
      ) ??
      false;

  @computed
  String? get apiKey => editorRuntimeOptions.aiConnectionOption.apiKey;

  @computed
  String? get apiBaseUrl => editorRuntimeOptions.aiConnectionOption.whenOrNull(
        openAi: (apiKey, organizationId, baseUrl) => baseUrl,
      );

  @observable
  DirectoryContent directoryContent;

  _EditorStore({
    required this.editorPreference,
    required this.aiConnectionPreference,
  })  : editorRuntimeOptions = EditorRuntimeOptions(
          workingDirectory: editorPreference.value.workingDirectory,
          author: editorPreference.value.author,
          copilotOptions: editorPreference.value.copilotOptions,
          aiConnectionOption: aiConnectionPreference.value,
          openaiOptions: editorPreference.value.openAIOptions,
          promptTemplate: editorPreference.value.promptTemplate,
        ),
        directoryContent = DirectoryContent.empty() {
    _refreshDirectory();
    _watchWorkingDir();

    addReactionDisposer(
      reaction(
        (_) => editorPreference.value,
        (settings) {
          _watchWorkingDir();

          editorRuntimeOptions = editorRuntimeOptions.copyWith(
            author: settings.author,
            workingDirectory: settings.workingDirectory,
            copilotOptions: settings.copilotOptions,
            openaiOptions: settings.openAIOptions,
            promptTemplate: settings.promptTemplate,
          );

          _refreshDirectory();
        },
      ),
    );

    addReactionDisposer(
      reaction(
        (_) => aiConnectionPreference.value,
        (aiConnectionOption) {
          editorRuntimeOptions = editorRuntimeOptions.copyWith(
            aiConnectionOption: aiConnectionOption,
          );
        },
      ),
    );
  }

  StreamSubscription<FileSystemEvent>? _dirSubscription;

  void _watchWorkingDir() {
    try {
      // Cancel the existing subscription if it exists
      _dirSubscription?.cancel();

      _dirSubscription = Directory(workingDir)
          .watch(events: FileSystemEvent.all, recursive: false)
          .listen((event) {
        print('event: $event in workingDir: $workingDir');
        _refreshDirectory();
      });
    } catch (e) {
      _logger.severe('error: $e');
    }
  }

  @override
  void dispose() {
    _dirSubscription?.cancel();

    super.dispose();
  }

  @action
  void changeDirectory(String path) {
    print('changeDirectory: $path');
    editorPreference.value = editorPreference.value.copyWith(
      workingDirectory: path,
    );
  }

  @action
  void changeCopilotEnabled(bool enabled) {
    editorPreference.value = editorPreference.value.copyWith(
      copilotOptions: editorPreference.value.copilotOptions.copyWith(
        copilotEnabled: enabled,
      ),
    );
  }

  @action
  void changeCopilotUseCharacterContext(bool enabled) {
    editorPreference.value = editorPreference.value.copyWith(
      copilotOptions: editorPreference.value.copilotOptions.copyWith(
        copilotUseCharacterContext: enabled,
      ),
    );
  }

  void _refreshDirectory() {
    directoryContent = DirectoryContent.fromDirectory(Directory(workingDir));
    // parseST2CardsInCurrentDirectory();
  }

  @action
  parseST2CardsInCurrentDirectory() async {
    // directoryContent = await directoryContent.parseContent();
  }

  @action
  Future<DirectoryItem> parseDirectoryItem(int index) async {
    final parsedItem = await directoryContent.entities[index].parseContent();
    print('parsedItem: $parsedItem');
    final updatedList =
        directoryContent.entities.rebuild((p0) => p0[index] = parsedItem).toBuiltList();
    directoryContent = directoryContent.copyWith(entities: updatedList);
    return parsedItem;
  }
}
