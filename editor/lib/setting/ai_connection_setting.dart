import 'package:editor/editor/openai_options.dart';
import 'package:editor/editor_preferences.dart';
import 'package:editor/app_preferences.dart';
import 'package:flutter/material.dart';
import 'package:editor/setting/settings_widgets.dart';
import 'package:editor/find_service.dart';
import 'package:editor/setting/ai_connection_option.dart';
import 'package:editor/util/path_extensions.dart';


class AiConnectionSettingWidget extends StatefulWidget {
  const AiConnectionSettingWidget({super.key});

  @override
  State<AiConnectionSettingWidget> createState() => _AiConnectionSettingWidgetState();
}

class _AiConnectionSettingWidgetState extends State<AiConnectionSettingWidget> {
  final apiKeyController = TextEditingController();
  final organizationIdController = TextEditingController();

  late final AiConnectionPreference pref;
  late final EditorPreference editorPref;

  late ConnectionType connectionType;
  late OpenAIModels model;

  @override
  void initState() {
    super.initState();

    pref = findService();
    editorPref = findService();

    resetValue();
  }

  @override
  Widget build(BuildContext context) => SettingsSection(
        children: [
          Text("AI Connection Settings", style: Theme.of(context).textTheme.headlineSmall),
          SettingsGap.medium(),
          RadioListTile.adaptive(
            value: ConnectionType.none,
            title: const Text("None"),
            groupValue: connectionType,
            onChanged: _setConnectionType,
          ),
          RadioListTile.adaptive(
            value: ConnectionType.openAI,
            title: const Text("Open AI"),
            groupValue: connectionType,
            onChanged: _setConnectionType,
          ),
          // RadioListTile.adaptive(
          //   value: ConnectionType.azureOpenAI,
          //   title: const Text("Azure Open AI"),
          //   groupValue: connectionType,
          //   onChanged: _setConnectionType,
          // ),
          SettingsGap.small(),
          TextFormField(
            key: const Key('apiKey'),
            controller: apiKeyController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "API Key",
            ),
            enabled: connectionType != ConnectionType.none,
          ),
          SettingsGap.small(),
          TextFormField(
            key: const Key('organizationId'),
            controller: organizationIdController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Organization ID",
            ),
            enabled: connectionType == ConnectionType.openAI,
          ),
          SettingsGap.medium(),
          ModelSelectionTile(
            model: model,
            onChanged: (value) => setState(() {
              model = value ?? model;
            }),
          ),
          SettingsButtonsRow(
            onReset: resetValue,
            onSubmit: submitValue,
          ),
        ],
      );

  void _setConnectionType(ConnectionType? value) {
    setState(() {
      connectionType = value ?? ConnectionType.none;
    });
  }

  void resetValue() {
    final options = pref.value;

    apiKeyController.text = options.apiKey ?? "";
    organizationIdController.text = options.organizationId ?? "";

    final editorSettings = editorPref.value;
    model = OpenAIModels.values
        .firstWhere((element) => element.name == editorSettings.openAIOptions.model);

    setState(() {
      connectionType = ConnectionType.from(pref.value);
    });
  }

  void submitValue() {
    final options = switch (connectionType) {
      ConnectionType.none => const AiConnectionOption.none(),
      ConnectionType.openAI => AiConnectionOption.openAi(
          apiKey: apiKeyController.text.trim(),
          organizationId: organizationIdController.text.trim().nullIfEmpty(),
        ),
    };

    if (!options.isSome || options.apiKey!.isNotEmpty) {
      pref.value = options;
    }

    editorPref.value = editorPref.value.copyWith(
      openAIOptions: OpenAIOptions(
        model: model.name,
      ),
    );
  }
}

enum ConnectionType {
  none,
  openAI,
  ;

  factory ConnectionType.from(AiConnectionOption option) => option.map(
        none: (_) => ConnectionType.none,
        openAi: (_) => ConnectionType.openAI,
      );
}

class ModelSelectionTile extends StatelessWidget {
  final OpenAIModels model;
  final ValueChanged<OpenAIModels?> onChanged;

  const ModelSelectionTile({
    super.key,
    required this.model,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) => ListTile(
        title: const Text("AI Model:"),
        subtitle: DropdownButton(
          items: OpenAIModels.values
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text("${e.name}, ${e.desc}"),
                  ))
              .toList(),
          selectedItemBuilder: (context) => OpenAIModels.values
              .map((e) => Container(
                    alignment: Alignment.centerLeft,
                    constraints: const BoxConstraints(minWidth: 100, maxHeight: 300),
                    child: Text(
                      e.name,
                      style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                    ),
                  ))
              .toList(),
          value: model,
          onChanged: onChanged,
        ),
      );
}
