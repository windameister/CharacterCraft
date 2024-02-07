import 'package:editor/character/model/st2character_model.dart';
import 'package:editor/character/model/st2document_store.dart';
import 'package:editor/character/widget/character_field_editor.dart';
import 'package:editor/character/widget/st2greetings_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:editor/setting/settings_widgets.dart';

class ST2CharacterWidget extends StatefulWidget {
  final Widget characterImage;

  const ST2CharacterWidget({
    super.key,
    required this.characterImage,
  });

  @override
  State<ST2CharacterWidget> createState() => _ST2CharacterWidgetState();
}

class _ST2CharacterWidgetState extends State<ST2CharacterWidget> {
  late final ST2CharacterStore2 store;

  late final TextEditingController _authorController;
  late final TextEditingController _nameController;
  late final TextEditingController _personalityController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _scenarioController;
  late final TextEditingController _mesExampleController;
  late final TextEditingController _creatorNotesController;
  late final TextEditingController _systemPromptController;
  late final TextEditingController _postHistoryInstructionsController;

  final List<ReactionDisposer?> _disposers = [];

  @override
  void initState() {
    super.initState();

    store = ST2CharacterStore2(parent: context.read<ST2DocumentStore2>());

    final character = store.character;

    _authorController = TextEditingController(text: store.author);
    _nameController = TextEditingController(text: character.name);
    _personalityController = TextEditingController(text: character.personality);
    _descriptionController = TextEditingController(text: character.description);
    _scenarioController = TextEditingController(text: character.scenario);
    _mesExampleController = TextEditingController(text: character.mesExample);
    _creatorNotesController = TextEditingController(text: character.creatorNotes);
    _systemPromptController = TextEditingController(text: character.systemPrompt);
    _postHistoryInstructionsController =
        TextEditingController(text: character.postHistoryInstructions);

    _disposers.add(reaction((_) => store.author, (text) => _updateText(_authorController, text)));
    // Create a reaction that listens for changes in the character's name
    _disposers.add(reaction((_) => store.name, (text) => _updateText(_nameController, text)));
    _disposers.add(
        reaction((_) => store.description, (text) => _updateText(_descriptionController, text)));
    _disposers.add(
        reaction((_) => store.personality, (text) => _updateText(_personalityController, text)));
    _disposers
        .add(reaction((_) => store.scenario, (text) => _updateText(_scenarioController, text)));
    _disposers
        .add(reaction((_) => store.mesExample, (text) => _updateText(_mesExampleController, text)));
    _disposers.add(
        reaction((_) => store.creatorNotes, (text) => _updateText(_creatorNotesController, text)));
    _disposers.add(
        reaction((_) => store.systemPrompt, (text) => _updateText(_systemPromptController, text)));
    _disposers.add(reaction((_) => store.postHistoryInstructions,
        (text) => _updateText(_postHistoryInstructionsController, text)));
  }

  @override
  void dispose() {
    // Dispose of the reaction
    _disposers.map((e) => e != null ? e() : null);

    // Dispose of the controllers
    _authorController.dispose();
    _nameController.dispose();
    _personalityController.dispose();
    _descriptionController.dispose();
    _scenarioController.dispose();
    _mesExampleController.dispose();
    _creatorNotesController.dispose();
    _systemPromptController.dispose();
    _postHistoryInstructionsController.dispose();

    super.dispose();
  }

  void _onStoreChange() {
    final character = store.character;

    // Update the controllers, but only if the text has actually changed.
    // This avoids triggering an infinite loop.
    _updateText(_authorController, store.author);
    _updateText(_nameController, character.name);
    _updateText(_personalityController, character.personality);
    _updateText(_descriptionController, character.description);
    _updateText(_scenarioController, character.scenario);
    _updateText(_mesExampleController, character.mesExample);
    _updateText(_creatorNotesController, character.creatorNotes);
    _updateText(_systemPromptController, character.systemPrompt);
    _updateText(_postHistoryInstructionsController, character.postHistoryInstructions);
  }

  void _updateText(TextEditingController controller, String newText) {
    if (controller.text != newText) {
      // Save the current cursor position
      TextSelection selection = controller.selection;

      // Update the text
      controller.text = newText;

      // Restore the cursor position, but ensure it's within the bounds of the new text
      if (selection.start > newText.length) {
        selection = TextSelection.fromPosition(TextPosition(offset: newText.length));
      }
      controller.selection = selection;
    }
  }

  @override
  Widget build(BuildContext context) => Provider.value(
        value: store,
        child: _Layout(
          characterImage: widget.characterImage,
          authorEditor: CharacterFieldEditor(
            controller: _authorController,
            displayTokenCount: false,
            name: 'Author',
            onChanged: (value, originalValue) {
              store.updateAuthor(value, originalValue);
            },
          ),
          nameEditor: CharacterFieldEditor(
            controller: _nameController,
            name: 'Name',
            onChanged: (value, originalValue) {
              if (originalValue != null) {
                store.recordHistory((p0) => p0.copyWith(name: originalValue));
              }
              store.update((p0) => p0.copyWith(name: value));
            },
          ),
          personalityEditor: CharacterFieldEditor(
              controller: _personalityController,
              name: 'Personality',
              onChanged: (value, originalValue) {
                if (originalValue != null) {
                  store.recordHistory((p0) => p0.copyWith(personality: originalValue));
                }
                store.update((p0) => p0.copyWith(personality: value));
              }),
          descriptionEditor: CharacterFieldEditor(
            controller: _descriptionController,
            name: 'Description',
            maxLines: 10,
            onChanged: (value, originalValue) {
              if (originalValue != null) {
                store.recordHistory((p0) => p0.copyWith(description: originalValue));
              }
              store.update((p0) => p0.copyWith(description: value));
            },
          ),
          scenarioEditor: CharacterFieldEditor(
            controller: _scenarioController,
            name: 'Scenario',
            onChanged: (value, originalValue) {
              if (originalValue != null) {
                store.recordHistory((p0) => p0.copyWith(scenario: originalValue));
              }
              store.update((p0) => p0.copyWith(scenario: value));
            },
          ),
          mesExampleEditor: CharacterFieldEditor(
            controller: _mesExampleController,
            name: 'Mes Example',
            onChanged: (value, originalValue) {
              if (originalValue != null) {
                store.recordHistory((p0) => p0.copyWith(mesExample: originalValue));
              }
              store.update((p0) => p0.copyWith(mesExample: value));
            },
          ),
          creatorNotesEditor: CharacterFieldEditor(
            controller: _creatorNotesController,
            name: 'Creator Notes',
            onChanged: (value, originalValue) {
              if (originalValue != null) {
                store.recordHistory((p0) => p0.copyWith(creatorNotes: originalValue));
              }
              store.update((p0) => p0.copyWith(creatorNotes: value));
            },
            displayTokenCount: false,
          ),
          systemPromptEditor: CharacterFieldEditor(
            controller: _systemPromptController,
            name: 'System Prompt',
            onChanged: (value, originalValue) {
              if (originalValue != null) {
                store.recordHistory((p0) => p0.copyWith(systemPrompt: originalValue));
              }
              store.update((p0) => p0.copyWith(systemPrompt: value));
            },
          ),
          postHistoryInstructionsEditor: CharacterFieldEditor(
            controller: _postHistoryInstructionsController,
            name: 'Post History Instructions',
            onChanged: (value, originalValue) {
              if (originalValue != null) {
                store.recordHistory((p0) => p0.copyWith(postHistoryInstructions: originalValue));
              }
              store.update((p0) => p0.copyWith(postHistoryInstructions: value));
            },
          ),
        ),
      );
}

class _Layout extends StatelessWidget {
  final Widget characterImage;
  final Widget authorEditor;
  final Widget nameEditor;
  final Widget personalityEditor;
  final Widget descriptionEditor;
  final Widget scenarioEditor;
  final Widget mesExampleEditor;
  final Widget creatorNotesEditor;
  final Widget systemPromptEditor;
  final Widget postHistoryInstructionsEditor;

  const _Layout({
    required this.characterImage,
    required this.authorEditor,
    required this.nameEditor,
    required this.personalityEditor,
    required this.descriptionEditor,
    required this.scenarioEditor,
    required this.mesExampleEditor,
    required this.creatorNotesEditor,
    required this.systemPromptEditor,
    required this.postHistoryInstructionsEditor,
  });

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: SettingsSection(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      authorEditor,
                      SettingsGap.small(),
                      nameEditor,
                      SettingsGap.small(),
                      personalityEditor,
                    ],
                  ),
                ),
                SettingsGap.small(),
                Expanded(child: characterImage),
                SettingsGap.small(),
              ],
            ),
            SettingsGap.medium(),
            descriptionEditor,
            SettingsGap.small(),
            scenarioEditor,
            SettingsGap.small(),
            const ST2GreetingsWidget(),
            SettingsGap.small(),
            mesExampleEditor,
            SettingsGap.small(),
            creatorNotesEditor,
            SettingsGap.small(),
            systemPromptEditor,
            SettingsGap.small(),
            postHistoryInstructionsEditor,
          ],
        ),
      );
}

class _CharacterFieldEditor extends StatelessWidget {
  final String name;
  final ST2CharacterStore2 store;
  final TextEditingController controller;
  final ST2CharacterModel Function(ST2CharacterModel character, String value) onChanged;
  final ValueGetter<int> tokenCountProvider;

  _CharacterFieldEditor({
    required this.name,
    required this.store,
    required this.controller,
    required this.onChanged,
    required this.tokenCountProvider,
  }) : super(key: Key(name));

  @override
  Widget build(BuildContext context) => Observer(
        builder: (context) => TextField(
          controller: controller,
          maxLines: null,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: name,
            counterText: '${tokenCountProvider()} tokens',
          ),
          onChanged: _onChange,
        ),
      );

  void _onChange(String value) => store.update((c) => onChanged(c, value));
}
