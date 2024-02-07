import 'package:editor/editor/copilot_store.dart';
import 'package:editor/editor/copilot_editing.dart';
import 'package:editor/util/token_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// for a continuely edited value, we kept the original value for restoring in undo operation
typedef ValueUpdated<T> = void Function(T value, T? originalValue);

class CharacterFieldEditor extends StatefulWidget {
  final String name;
  final String? hintText;
  final int? maxLines;
  final TextEditingController controller;
  final ValueUpdated<String> onChanged;
  final ValueChanged<bool>? onFocusChanged;
  final bool displayTokenCount;

  final Widget? customEditButton; // custom edit button
  // final VoidCallback? onCustomEdit;

  CharacterFieldEditor({
    required this.name,
    required this.controller,
    required this.onChanged,
    this.hintText,
    this.onFocusChanged,
    this.maxLines,
    this.customEditButton,
    this.displayTokenCount = true,
  }) : super(key: Key(name));

  @override
  State<CharacterFieldEditor> createState() => _CharacterFieldEditorState();
}

class _CharacterFieldEditorState extends State<CharacterFieldEditor> {
  late int tokenCount;
  late TextEditingController controller;
  final focusNode = FocusNode();
  late String _initialText;

  @override
  void initState() {
    super.initState();
    _reset();
  }

  @override
  void dispose() {
    focusNode.removeListener(_onFocusChanged);
    controller.removeListener(_updateTokenCount);
    focusNode.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant CharacterFieldEditor oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (controller != oldWidget.controller) {
      focusNode.removeListener(_onFocusChanged);
      controller.removeListener(_updateTokenCount);
      _reset();
      _updateTokenCount();
    }
  }

  _startCopilotEditing(TextSelection selection, String originalText) {
    // print('_startCopilotEditing, originalText: $originalText');

    final copilot = context.read<CopilotStore>();
    copilot.setCurrentActiveEditing(CopilotEditing.startEditing(
      original: originalText,
      onEditComplete: (updatedValue) {
        controller.text = controller.text.replaceRange(
          selection.start,
          selection.end,
          updatedValue,
        );

        widget.onChanged(updatedValue, originalText);
      },
    ));
  }

  void _onFocusChanged() {
    widget.onFocusChanged?.call(focusNode.hasFocus);

    if (focusNode.hasFocus) {
      // The text field has gained focus.
      // Store the initial state of the text.
      _initialText = controller.text;
      //  when updated, we need to update the token count
      // print('_onFocusChanged, initial text: $_initialText');

      _startCopilotEditing(controller.selection, _initialText);

      // only fire once
    } else {
      // The text field has lost focus.
      // The user has finished editing the text.
      // Create a history entry for the change from initialText to myController.text.
      // print('_onFocusChanged, initial text: $_initialText');
      // print('_onFocusChanged, updated text: ${controller.text}');
      // only fire once
      if (_initialText != controller.text) {
        widget.onChanged(controller.text, _initialText);
        _initialText = controller.text;
      }
    }
  }

  void _reset() {
    focusNode.addListener(_onFocusChanged);
    widget.controller.addListener(_updateTokenCount);

    controller = widget.controller;
    tokenCount = controller.text.getTokenCount();
  }

  void _updateTokenCount() {
    if (!controller.selection.isCollapsed) {
      final selectedText = controller.selection.textInside(controller.text);
      _startCopilotEditing(controller.selection, selectedText);
    }

    setState(
      () => tokenCount = controller.text.getTokenCount(),
    );
  }

  makeTextField() => TextField(
        controller: controller,
        focusNode: focusNode,
        maxLines: widget.maxLines,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: widget.name,
          hintText: widget.hintText,
          counterText: widget.displayTokenCount ? '$tokenCount tokens' : null,
        ),
        onChanged: (value) => widget.onChanged(value, null),
      );

  @override
  Widget build(BuildContext context) => widget.customEditButton != null
      ? Row(children: [
          Expanded(child: makeTextField()),
          const SizedBox(width: 8),
          widget.customEditButton!,
          // IconButton.outlined(
          //   onPressed: widget.onCustomEdit,
          //   icon: const Icon(Icons.edit),
          // ),
        ])
      : makeTextField();
}
