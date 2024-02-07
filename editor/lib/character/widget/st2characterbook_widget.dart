import 'package:editor/character/model/st2document_store.dart';
import 'package:editor/character/widget/st2characterbookentries_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:editor/setting/settings_widgets.dart';

class ST2CharacterBookWidget extends StatefulWidget {
  const ST2CharacterBookWidget({super.key});

  @override
  State<ST2CharacterBookWidget> createState() => _ST2CharacterBookWidgetState();
}

class _ST2CharacterBookWidgetState extends State<ST2CharacterBookWidget> {
  late ST2CharacterBookStore2 store;

  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _scanDepthController = TextEditingController();
  final _tokenBudgetController = TextEditingController();

  @override
  void initState() {
    super.initState();

    store = context.read();

    _nameController.text = store.book.name;
    _descriptionController.text = store.book.description;
    _scanDepthController.text = store.book.scanDepth.toString();
    _tokenBudgetController.text = store.book.tokenBudget.toString();
  }

  @override
  Widget build(BuildContext context) => _Layout(
        nameEditor: TextField(
          controller: _nameController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Name",
          ),
          onChanged: (value) => store.update((p0) => p0.copyWith(name: value)),
        ),
        descriptionEditor: TextField(
          controller: _descriptionController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Description",
          ),
          onChanged: (value) => store.update((p0) => p0.copyWith(description: value)),
        ),
        recursiveScanningEditor: Observer(
          builder: (_) => CheckboxListTile(
            title: const Text('Recursive Scanning'),
            value: store.recursiveScanning,
            onChanged: (value) =>
                store.update((p0) => p0.copyWith(recursiveScanning: value == true)),
          ),
        ),
        scanDepthEditor: _IntTextEditorField(
          controller: _scanDepthController,
          labelText: "Scan Depth",
          onChanged: (value) => store.update(
            (p0) => p0.copyWith(
              scanDepth: int.parse(value),
            ),
          ),
        ),
        tokenBudgetEditor: _IntTextEditorField(
          labelText: 'Token Budget',
          controller: _tokenBudgetController,
          onChanged: (value) => store.update(
            (p0) => p0.copyWith(
              tokenBudget: int.parse(value),
            ),
          ),
        ),
        entriesEditor: Provider.value(
          value: store,
          child: const BookEntriesWidget(),
        ),
      );
}

class _Layout extends StatelessWidget {
  Widget nameEditor;
  Widget descriptionEditor;
  Widget recursiveScanningEditor;
  Widget scanDepthEditor;
  Widget tokenBudgetEditor;
  Widget entriesEditor;

  _Layout({
    required this.nameEditor,
    required this.descriptionEditor,
    required this.recursiveScanningEditor,
    required this.scanDepthEditor,
    required this.tokenBudgetEditor,
    required this.entriesEditor,
  });

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
          child: SettingsSection(children: [
        nameEditor,
        SettingsGap.small(),
        descriptionEditor,
        SettingsGap.small(),
        recursiveScanningEditor,
        SettingsGap.small(),
        Row(
          children: [
            scanDepthEditor,
            SettingsGap.small(),
            tokenBudgetEditor,
          ],
        ),
        SettingsGap.medium(),
        const ListTile(
          title: Text("Entries"),
        ),
        // entries
        entriesEditor,
      ]));
}

class _IntTextEditorField extends StatelessWidget {
  final String labelText;
  final ValueChanged? onChanged;
  final TextEditingController controller;

  const _IntTextEditorField({
    required this.labelText,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) => Expanded(
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: labelText,
          ),
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ], // Only numbers can be entered
          keyboardType: TextInputType.number,
          onChanged: onChanged,
        ),
      );
}
