import 'package:editor/chat/chat_view.dart';
import 'package:editor/editor/copilot_store.dart';
import 'package:editor/editor/copilot_editing.dart';
import 'package:editor/character/widget/editable_text_widget.dart';
import 'package:editor/character/widget/labeled_border_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

class CopilotWidget extends StatelessWidget {
  const CopilotWidget({super.key});

  @override
  Widget build(BuildContext context) => Consumer<CopilotStore>(
        builder: (_, store, child) => Observer(
          builder: (_) => Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: const LLMStatusWidget(),
              actions: [
                const Text('Use Character Context'),
                Checkbox(
                  value: store.isUseCharacterContext,
                  onChanged: (value) {
                    store.changeUseCharacterContext(value == true);
                  },
                ),
                const Text('Enable copilot'),
                Checkbox(
                  value: store.isCopilotEditingEnabled,
                  onChanged: (value) {
                    store.changeCopilotEnabled(value == true);
                  },
                ),
              ],
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(1),
                child: Divider(height: 1),
              ),
            ),
            body: const _CopilotContent(),
          ),
        ),
      );
}

class _CopilotContent extends StatefulWidget {
  const _CopilotContent();

  @override
  State<_CopilotContent> createState() => _CopilotContentState();
}

class _CopilotContentState extends State<_CopilotContent> {
  late CopilotStore store;
  final controller = TextEditingController();
  final scrollController = ScrollController();
  final key = GlobalKey();
  late ReactionDisposer reactionDisposer;

  @override
  void initState() {
    super.initState();

    store = context.read();

    reactionDisposer = reaction(
      (_) => store.copilotEditing?.isNeedConfirmation,
      (isNeedConfirmation) {
        if (isNeedConfirmation == true) {
          WidgetsBinding.instance!.addPostFrameCallback((_) {
            _scrollToUpdatedText();
          });
        }
      },
    );
  }

  @override
  void dispose() {
    // Dispose of the reaction when the widget is disposed
    reactionDisposer.call();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Observer(
        builder: (_) => store.hasCopilotEditingContent
            ? Column(
                children: [
                  _PromptInputBox(
                    controller: controller,
                    onSend: store.isSendable
                        ? () async {
                            await store.sendPromptEdit();
                          }
                        : null,
                  ),
                  // Prompt to enter text
                  Expanded(
                    child: SingleChildScrollView(
                      controller: scrollController,
                      padding: const EdgeInsets.all(8),
                      child: _buildEditingContent(),
                    ),
                  ),
                ],
              )
            : const Center(
                child: Text("None"),
              ),
      );

  _buildEditingContent() {
    return Column(children: [
      if (store.isWorkingByLLM) ...[
        const Text("Copilot is thinking..."),
        const SizedBox(height: 8),
        const CircularProgressIndicator(),
        const SizedBox(height: 8),
      ],
      if (store.checkWaitingForUserInput()) _CopilotToolbar(store),
      _TextContentBlock(
        text: store.copilotEditing!.original,
        isOriginal: true,
      ),
      const SizedBox(height: 8),
      if (store.hasNeedConfirmationContent) ...[
        _TextContentBlock(
            key: key,
            text: store.copilotEditing!.updatedValue,
            isOriginal: false,
            onChanged: (value) {
              store.editingUpdatedValue(value);
            },
            onAccept: () {
              store.acceptEditing();
            },
            onCancel: () {
              store.cancelEditing();
            },
            onRegenerate: () {
              store.regenerateEditing();
            }),
        const SizedBox(height: 8),
      ],
    ]);
  }

  void _scrollToUpdatedText() {
    final renderBox = key.currentContext!.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero).dy;
    scrollController.animateTo(
      position,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}

class _CopilotToolbar extends StatelessWidget {
  final CopilotStore store;
  const _CopilotToolbar(this.store);
  void executeAndHandleErrors(BuildContext context, Future<void> Function() asyncFunction) async {
    try {
      await asyncFunction();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please check the LLM connection.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () => executeAndHandleErrors(context, store.expandTheText),
            child: const Text("AI Expanding"),
          ),
          TextButton(
            onPressed: () => executeAndHandleErrors(context, store.reviseText),
            child: const Text("AI Revise"),
          ),
          TextButton(
            onPressed: () => executeAndHandleErrors(context, store.summarizeText),
            child: const Text("AI summarize"),
          ),
        ],
      );
}

class _TextContentBlock extends StatelessWidget {
  const _TextContentBlock({
    super.key,
    required this.text,
    required this.isOriginal,
    this.onAccept,
    this.onCancel,
    this.onRegenerate,
    this.onChanged,
  });

  final String text;
  final bool isOriginal;
  final VoidCallback? onAccept;
  final VoidCallback? onCancel;
  final VoidCallback? onRegenerate;
  final ValueChanged<String>? onChanged;

  bool get hasCallback => onAccept != null || onCancel != null || onRegenerate != null;

  @override
  Widget build(BuildContext context) {
    return text.isEmpty
        ? Container()
        : LabeledBorderContainer(
            label: isOriginal ? 'Original text' : 'Updated text',
            borderColor: isOriginal ? Colors.blue : Colors.orange,
            child: Column(
              children: [
                onChanged != null
                    ? EditableTextWidget(text: text, onChanged: onChanged)
                    : Text(text),
                if (hasCallback) ...[
                  const SizedBox(height: 8),
                  const Divider(height: 1),
                  const SizedBox(height: 8),
                  Row(children: [
                    if (onAccept != null) _AcceptButton(onAccept: onAccept),
                    if (onCancel != null) _CancelButton(onCancel: onCancel),
                    if (onRegenerate != null) _RegenerateButton(onRegenerate: onRegenerate),
                  ])
                ]
              ],
            ),
          );
  }
}

class _AcceptButton extends StatelessWidget {
  final VoidCallback? onAccept;
  const _AcceptButton({
    required this.onAccept,
  });

  @override
  Widget build(BuildContext context) =>
      TextButton(onPressed: onAccept, child: const Text("Accept"));
}

class _CancelButton extends StatelessWidget {
  final VoidCallback? onCancel;
  const _CancelButton({
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) =>
      TextButton(onPressed: onCancel, child: const Text("Cancel"));
}

class _RegenerateButton extends StatelessWidget {
  final VoidCallback? onRegenerate;
  const _RegenerateButton({
    required this.onRegenerate,
  });

  @override
  Widget build(BuildContext context) =>
      TextButton(onPressed: onRegenerate, child: const Text("Regenerate"));
}

class _PromptInputBox extends StatelessWidget {
  const _PromptInputBox({
    required this.controller,
    this.onSend,
  });

  final TextEditingController controller;
  final VoidCallback? onSend;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              maxLines: null,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Ask copilot to edit the text",
              ),
              onChanged: (value) {
                final store = context.read<CopilotStore>();
                store.editingPrompt(value);
              },
            ),
          ),
          const SizedBox(width: 8),
          Consumer<CopilotStore>(
            builder: (_, store, child) => IconButton.filled(
              tooltip: "Use LLM to make copilot editing based on the given text",
              onPressed: store.isWorkingByLLM ? null : onSend,
              icon: const Icon(Icons.send),
            ),
          ),
        ],
      ),
    );
  }
}
