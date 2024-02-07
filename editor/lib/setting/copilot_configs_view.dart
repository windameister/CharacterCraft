import 'package:editor/editor_preferences.dart';
import 'package:flutter/material.dart';
import 'package:editor/setting/settings_widgets.dart';
import 'package:editor/find_service.dart';

class CopilotConfigsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(children: [
        CopilotSettingsWidget(),
      ]);
}

class CopilotSettingsWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CopilotSettingsWidgetState();
}

class _CopilotSettingsWidgetState extends State<CopilotSettingsWidget> {
  late EditorPreference pref;

  final _generalEditingPromptController = TextEditingController();
  final _expandPromptController = TextEditingController();
  final _revisePromptController = TextEditingController();
  final _summaryPromptController = TextEditingController();

  bool _copilotEnabled = false;
  bool _copilotUseCharacterContext = false;

  @override
  void initState() {
    super.initState();

    pref = findService();

    _generalEditingPromptController.text = pref.value.copilotOptions.generalEditingPrompt;
    _expandPromptController.text = pref.value.copilotOptions.expandPrompt;
    _revisePromptController.text = pref.value.copilotOptions.revisePrompt;
    _summaryPromptController.text = pref.value.copilotOptions.summaryPrompt;

    _copilotEnabled = pref.value.copilotOptions.copilotEnabled;
    _copilotUseCharacterContext = pref.value.copilotOptions.copilotUseCharacterContext;
  }

  @override
  Widget build(BuildContext context) => SettingsSection(children: [
        Text('Copilot Options', style: Theme.of(context).textTheme.headlineSmall),
        SettingsGap.medium(),
        CheckboxListTile(
          value: _copilotEnabled,
          onChanged: (value) {
            setState(() {
              _copilotEnabled = value == true;
            });
          },
          title: const Text("Copilot Enabled"),
        ),
        SettingsGap.small(),
        CheckboxListTile(
          value: _copilotUseCharacterContext,
          onChanged: (value) {
            setState(() {
              _copilotUseCharacterContext = value == true;
            });
          },
          title: const Text("Copilot Use Character Context"),
        ),
        SettingsGap.small(),
        TextField(
          controller: _generalEditingPromptController,
          maxLines: null,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "General Editing Prompt",
          ),
        ),
        SettingsGap.small(),
        TextField(
          controller: _expandPromptController,
          maxLines: null,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Expand Prompt",
          ),
        ),
        SettingsGap.small(),
        TextField(
          controller: _revisePromptController,
          maxLines: null,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Revise Prompt",
          ),
        ),
        SettingsGap.small(),
        TextField(
          controller: _summaryPromptController,
          maxLines: null,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Summary Prompt",
          ),
        ),
        SettingsGap.medium(),
        SettingsButtonsRow(onReset: onReset, onSubmit: onSubmit),
      ]);

  void onReset() {
    _generalEditingPromptController.text = pref.value.copilotOptions.generalEditingPrompt;
    _expandPromptController.text = pref.value.copilotOptions.expandPrompt;
    _revisePromptController.text = pref.value.copilotOptions.revisePrompt;
    _summaryPromptController.text = pref.value.copilotOptions.summaryPrompt;
  }

  void onSubmit() {
    pref.value = pref.value.copyWith(
        copilotOptions: pref.value.copilotOptions.copyWith(
      copilotEnabled: _copilotEnabled,
      copilotUseCharacterContext: _copilotUseCharacterContext,
      generalEditingPrompt: _generalEditingPromptController.text.trim(),
      expandPrompt: _expandPromptController.text.trim(),
      revisePrompt: _revisePromptController.text.trim(),
      summaryPrompt: _summaryPromptController.text.trim(),
    ));
  }
}
