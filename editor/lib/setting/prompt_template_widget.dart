import 'package:editor/editor_preferences.dart';
import 'package:flutter/material.dart';
import 'package:editor/setting/settings_widgets.dart';
import 'package:editor/find_service.dart';

class PromptTemplateWidget extends StatefulWidget {
  const PromptTemplateWidget({super.key});

  @override
  State<PromptTemplateWidget> createState() => _PromptTemplateWidgetState();
}

class _PromptTemplateWidgetState extends State<PromptTemplateWidget> {
  late EditorPreference pref;

  final _mainPromptController = TextEditingController();
  final _nsfwPromptController = TextEditingController();
  final _jailBreakPromptController = TextEditingController();

  @override
  void initState() {
    super.initState();

    pref = findService();

    resetValue();
  }

  @override
  Widget build(BuildContext context) => SettingsSection(children: [
        Text("Chatting Prompt Template", style: Theme.of(context).textTheme.headlineSmall),
        SettingsGap.small(),
        TextField(
          controller: _mainPromptController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Main Prompt",
          ),
          maxLines: null,
        ),
        SettingsGap.small(),
        TextField(
          controller: _nsfwPromptController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "NSFW Prompt",
          ),
          maxLines: null,
        ),
        SettingsGap.small(),
        TextField(
          controller: _jailBreakPromptController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Jail Break Prompt",
          ),
          maxLines: null,
        ),
        SettingsGap.small(),
        SettingsButtonsRow(
          onReset: resetValue,
          onSubmit: submitValue,
        ),
      ]);

  void resetValue() {
    final promptTemplate = pref.value.promptTemplate;

    _mainPromptController.text = promptTemplate.mainPrompt;
    _nsfwPromptController.text = promptTemplate.nsfwPrompt;
    _jailBreakPromptController.text = promptTemplate.jailBreak;
  }

  void submitValue() {
    final promptTemplate = pref.value.promptTemplate;

    pref.value = pref.value.copyWith(
      promptTemplate: promptTemplate.copyWith(
        mainPrompt: _mainPromptController.text.trim(),
        nsfwPrompt: _nsfwPromptController.text.trim(),
        jailBreak: _jailBreakPromptController.text.trim(),
      ),
    );
  }
}
