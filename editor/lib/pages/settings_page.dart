import 'package:editor/editor_preferences.dart';
import 'package:editor/setting/ai_connection_setting.dart';
import 'package:editor/setting/copilot_configs_view.dart';
import 'package:editor/setting/prompt_template_widget.dart';
import 'package:flutter/material.dart';
import 'package:editor/setting/settings_widgets.dart';
import 'package:editor/find_service.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Row(
        children: [
          const Flexible(
            flex: 1,
            child: LLMConfigsView(),
          ),
          const VerticalDivider(
            width: 1,
          ),
          Flexible(
            flex: 1,
            child: EditorSettingsView(),
          ),
        ],
      ));
}

class LLMConfigsView extends StatelessWidget {
  const LLMConfigsView({super.key});

  @override
  Widget build(BuildContext context) => ListView(
        children: const [
          AiConnectionSettingWidget(),
          PromptTemplateWidget(),
        ],
      );
}

class EditorSettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
        children: [
          AuthorSettingWidget(),
          CopilotSettingsWidget(),
        ],
      );
}

class AuthorSettingWidget extends StatefulWidget {
  @override
  State<AuthorSettingWidget> createState() => _AuthorSettingWidgetState();
}

class _AuthorSettingWidgetState extends State<AuthorSettingWidget> {
  late EditorPreference editorPref;
  final _authorController = TextEditingController();

  @override
  void initState() {
    super.initState();

    editorPref = findService();
    _authorController.text = editorPref.value.author;
  }

  @override
  Widget build(BuildContext context) => SettingsSection(children: [
        Text("Editor Options", style: Theme.of(context).textTheme.headlineSmall),
        // Author
        TextField(
          maxLines: null,
          decoration: const InputDecoration(
            labelText: 'Author',
            hintText: 'Author',
          ),
          controller: _authorController,
        ),

        SettingsGap.medium(),

        SettingsButtonsRow(onReset: onReset, onSubmit: onSubmit)
      ]);

  void onReset() {
    _authorController.text = editorPref.value.author;
    setState(() {});
  }

  void onSubmit() {
    editorPref.value = editorPref.value.copyWith(author: _authorController.text.trim());
  }
}
