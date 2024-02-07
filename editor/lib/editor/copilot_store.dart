import 'package:editor/editor/copilot_options.dart';
import 'package:editor/editor/editor_runtime_options.dart';
import 'package:editor/editor/editor_store.dart';
import 'package:editor/character/model/st2document_store.dart';
import 'package:editor/editor/copilot_editing.dart';
import 'package:editor/chat/llm_connection.dart';
import 'package:mobx/mobx.dart';
import 'package:openai_api/openai_api.dart';
import 'package:simple_mustache/simple_mustache.dart';
import 'package:editor/chat/dialog_message.dart';
import 'package:logging/logging.dart';

part 'copilot_store.g.dart';

final _logger = Logger('EditorStore');
class CopilotStore = _CopilotStore with _$CopilotStore;

abstract class _CopilotStore with Store {
  // Copilot editing related

  @computed
  EditorRuntimeOptions get runtimeOptions => editorStore.editorRuntimeOptions;

  @computed
  CopilotOptions get copilotOptions => runtimeOptions.copilotOptions;

  @computed
  bool get isUseCharacterContext => copilotOptions.copilotUseCharacterContext;

  @computed
  bool get isCopilotEditingEnabled => copilotOptions.copilotEnabled;

  @computed
  bool get isSendable =>
      isCopilotEditingEnabled && copilotEditing != null && copilotEditing!.isPromptReady;

  // On the fly state (if copilot LLM is working)
  @observable
  bool isWorkingByLLM;

  @computed
  bool get isWaitingForUserInput =>
      !isWorkingByLLM && copilotEditing != null && copilotEditing!.isWaitingForUserAction;

  @observable
  CopilotEditing? copilotEditing;

  @computed
  bool get hasNeedConfirmationContent =>
      isCopilotEditingEnabled && copilotEditing != null && copilotEditing!.isNeedConfirmation;

  @computed
  bool get hasCopilotEditingContent => isCopilotEditingEnabled && copilotEditing != null;

  ST2CharacterStore2 parent;
  EditorStore editorStore;

  _CopilotStore({required this.parent, required this.editorStore}) : isWorkingByLLM = false;

  @action
  void changeUseCharacterContext(bool value) {
    editorStore.changeCopilotUseCharacterContext(value);
  }

  @action
  void changeCopilotEnabled(bool value) {
    editorStore.changeCopilotEnabled(value);
  }

  bool checkWaitingForUserInput() {
    return !isWorkingByLLM && copilotEditing != null && copilotEditing!.isWaitingForUserAction;
  }

  @action
  void setCurrentActiveEditing(CopilotEditing editing) {
    if (!isCopilotEditingEnabled) {
      return;
    }

    copilotEditing = editing;
  }

  @action
  void editingPrompt(String prompt) {
    if (!isCopilotEditingEnabled) {
      return;
    }

    if (copilotEditing == null) {
      return;
    }

    copilotEditing = CopilotEditing.prompting(
      original: copilotEditing!.original,
      onEditComplete: copilotEditing!.onEditComplete,
      prompt: prompt,
    );
  }

  @action
  void editingUpdatedValue(String value) {
    if (!isCopilotEditingEnabled) {
      return;
    }

    if (copilotEditing == null) {
      return;
    }

    if (value.isEmpty) {
      copilotEditing = CopilotEditing.prompting(
        original: copilotEditing!.original,
        onEditComplete: copilotEditing!.onEditComplete,
        prompt: copilotEditing!.prompt,
      );
    } else {
      copilotEditing = CopilotEditing.needConfirmation(
        original: copilotEditing!.original,
        onEditComplete: copilotEditing!.onEditComplete,
        prompt: copilotEditing!.prompt,
        updated: value,
      );
    }
  }

  @action
  acceptEditing() {
    if (!isCopilotEditingEnabled) {
      return;
    }

    if (!copilotEditing!.isNeedConfirmation) {
      return;
    }

    copilotEditing!.maybeWhen(
      needConfirmation: (original, onEditComplete, prompt, updated) {
        onEditComplete(updated);
        copilotEditing = null;
      },
      orElse: () => false,
    );
  }

  @action
  cancelEditing() {
    if (!isCopilotEditingEnabled) {
      return;
    }

    if (!copilotEditing!.isNeedConfirmation) {
      return;
    }

    copilotEditing!.maybeWhen(
      needConfirmation: (original, onEditComplete, prompt, updated) {
        copilotEditing = CopilotEditing.prompting(
          original: original,
          onEditComplete: onEditComplete,
          prompt: prompt,
        );
      },
      orElse: () => false,
    );
  }

  @action
  regenerateEditing() {
    if (!isCopilotEditingEnabled) {
      return;
    }

    copilotEditing!.maybeWhen(
      needConfirmation: (original, onEditComplete, prompt, updated) async {
        copilotEditing = await _copilotEditWithPrompt(prompt);
      },
      orElse: () => false,
    );
  }

  // first time send editing request with general prompt
  @action
  sendPromptEdit() async {
    if (!isCopilotEditingEnabled) {
      return;
    }

    if (!copilotEditing!.isPrompting) {
      return;
    }

    copilotEditing!.maybeWhen(
      prompting: (original, onEditComplete, prompt) async {
        copilotEditing = await _makeLLMEditingWithPrompt(prompt);
      },
      orElse: () => false,
    );
  }

  Future<DialogMessage?> _workWithLLM(List<DialogMessage> messages) async {
    try {
      if (!editorStore.aiConnectionReady) return null;

      isWorkingByLLM = true;
      return await LLMOpenAI(
        config: OpenaiConfig(
          apiKey: editorStore.apiKey!,
          apiBaseUrl: editorStore.apiBaseUrl!,
        ),
      ).chatCompletion(
        messages,
        model: editorStore.model,
      );
    } catch (e) {
      _logger.severe('error when _workWithLLM: $e');
      rethrow;
      // return null;
    } finally {
      isWorkingByLLM = false;
    }
  }

  DialogMessage _genCharContextMessage() {
    return DialogMessage.system(
        message:
            "User is currently drafting a virtual character / story setting which is defined as:\n${parent.characterBasicDescription}");
  }

  _copilotEditWithPrompt(String userPrompt) async {
    if (!isCopilotEditingEnabled) {
      throw Exception('Copilot editing is not enabled');
    }

    if (copilotEditing == null) {
      return null;
    }

    final messages = [
      DialogMessage.user(message: userPrompt),
    ];

    if (isUseCharacterContext) {
      messages.insert(0, _genCharContextMessage());
    }

    final reply = await _workWithLLM(messages);
    if (reply == null) {
      throw Exception('failed to get LLM reply');
    }

    copilotEditing = CopilotEditing.needConfirmation(
      original: copilotEditing!.original,
      onEditComplete: copilotEditing!.onEditComplete,
      prompt: userPrompt,
      updated: reply.message,
    );
    return copilotEditing;
  }

  String _renderCopilotPrompt(String promptTemplate, {String? instruction}) {
    final m = Mustache(
      map: {
        "original": copilotEditing!.original,
        "instruction": instruction ?? '',
      },
    );

    return m.convert(promptTemplate);
  }

  Future<CopilotEditing?> _makeLLMEditingWithPrompt(String prompt) async {
    return await _copilotEditWithPrompt(
        _renderCopilotPrompt(copilotOptions.generalEditingPrompt, instruction: prompt));
  }

  @action
  Future<CopilotEditing?> expandTheText() async {
    return await _copilotEditWithPrompt(_renderCopilotPrompt(copilotOptions.expandPrompt));
  }

  @action
  Future<CopilotEditing?> reviseText() async {
    return await _copilotEditWithPrompt(_renderCopilotPrompt(copilotOptions.revisePrompt));
  }

  @action
  Future<CopilotEditing?> summarizeText() async {
    return await _copilotEditWithPrompt(_renderCopilotPrompt(copilotOptions.summaryPrompt));
  }
}
