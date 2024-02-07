import 'package:editor/character/model/st2characterbook_model.dart';
import 'package:editor/character/model/st2document_store.dart';
import 'package:editor/character/widget/character_field_editor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:editor/setting/settings_widgets.dart';

class BookEntriesWidget extends StatefulWidget {
  const BookEntriesWidget({super.key});

  @override
  State<StatefulWidget> createState() => _EntriesWidgetState();
}

class _EntriesWidgetState extends State<BookEntriesWidget> {
  late ST2CharacterBookEntriesStore store;

  @override
  initState() {
    super.initState();
    store = ST2CharacterBookEntriesStore(parent: context.read());
  }

  @override
  Widget build(BuildContext context) => Provider.value(
        value: store,
        child: _Layout(
          entries: Observer(
            builder: (_) => ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: store.entries.length,
              itemBuilder: (context, index) {
                final entry = store.entries[index];
                return Provider(
                  key: Key(entry.id),
                  create: (context) => ST2CharacterBookEntryStore2(parent: store, id: entry.id),
                  child: _ExpandableEntryWidget(
                    onRemoved: (id) {
                      store.removeEntry(index);
                      setState(() => {});
                    },
                    onAdded: () => setState(
                        () => store.insertEntry(index + 1, ST2CharacterBookEntryModel.empty())),
                  ),
                );
              },
              separatorBuilder: (context, index) => SettingsGap.small(),
            ),
          ),
          addButton: TextButton.icon(
            label: const Text('Add Entry'),
            onPressed: () {
              setState(() {
                store.addEntry(ST2CharacterBookEntryModel.empty());
              });
            },
            icon: const Icon(Icons.add),
          ),
        ),
      );
}

class _Layout extends StatelessWidget {
  Widget entries;
  Widget addButton;

  _Layout({required this.entries, required this.addButton});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          entries,
          SettingsGap.small(),
          addButton,
        ],
      );
}

class _ExpandableEntryWidget extends StatelessWidget {
  final ValueChanged<String>? onRemoved;
  final VoidCallback? onAdded;

  const _ExpandableEntryWidget({this.onRemoved, this.onAdded});

  @override
  Widget build(BuildContext context) {
    final store = context.read<ST2CharacterBookEntryStore2>();
    return Card(
      margin: const EdgeInsets.all(10),
      child: ExpansionTile(
        title: Observer(
          builder: (_) => Text(
            store.titleString,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        childrenPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        onExpansionChanged: (value) {
          store.setEntryExpanded(value);
        },
        initiallyExpanded: store.isEntryExpanded(),
        children: [
          const _EntryContentWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () => onRemoved?.call(store.id),
                icon: const Icon(Icons.remove),
              ),
              SettingsGap.small(),
              IconButton(
                onPressed: onAdded,
                icon: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _EntryContentWidget extends StatefulWidget {
  const _EntryContentWidget();

  @override
  State<_EntryContentWidget> createState() => _EntryContentWidgetState();
}

class _EntryContentWidgetState extends State<_EntryContentWidget> {
  late ST2CharacterBookEntryStore2 store;

  final _keysController = TextEditingController();
  final _secondaryKeysController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();

    store = context.read();

    _keysController.text = store.entry.keys;
    _secondaryKeysController.text = store.entry.secondaryKeys;
    _contentController.text = store.entry.content;
  }

  @override
  void dispose() {
    super.dispose();

    _keysController.dispose();
    _secondaryKeysController.dispose();
    _contentController.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Row(
            children: [
              _KeyTextFieldWidget(
                keysController: _keysController,
                name: "Primary Keys (, Seperated)",
                hintText: "(Required)",
                onChanged: (value) => store.update(
                  (p0) => p0.copyWith(keys: value),
                ),
              ),
              SettingsGap.small(),
              _SelectiveLogicDropdown(
                options: ST2CharacterBookEntryModel.selectiveLogicOptions,
                value: store.entry.selectiveLogic,
                onChanged: (value) => store.update(
                  (p0) => p0.copyWith(selectiveLogic: value as int),
                ),
              ),
              SettingsGap.small(),
              _KeyTextFieldWidget(
                keysController: _secondaryKeysController,
                name: "Optional Filters (, Seperated)",
                hintText: " (Optional)",
                onChanged: (value) => store.update(
                  (p0) => p0.copyWith(secondaryKeys: value),
                ),
              ),
            ],
          ),
          SettingsGap.small(),
          CharacterFieldEditor(
            controller: _contentController,
            name: "Content",
            onChanged: (value, originalValue) {
              if (originalValue != null) {
                store.recordHistory((p0) => p0.copyWith(content: originalValue));
              }
              store.update((p0) => p0.copyWith(content: value));
            },
          ),
          SettingsGap.small(),
        ],
      );
}

class _KeyTextFieldWidget extends StatelessWidget {
  const _KeyTextFieldWidget({
    required TextEditingController keysController,
    required this.onChanged,
    required this.name,
    this.hintText,
    this.helperText,
  }) : _keysController = keysController;

  final TextEditingController _keysController;
  final ValueChanged? onChanged;
  final String name;
  final String? hintText;
  final String? helperText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        controller: _keysController,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: name,
          hintText: hintText,
          helperText: helperText,
        ),
        onChanged: onChanged,
      ),
    );
  }
}

class _SelectiveLogicDropdown extends StatelessWidget {
  final int value;
  final ValueChanged<int?> onChanged;
  final Map<int, String> options;
  final String? label;

  const _SelectiveLogicDropdown({
    required this.value,
    required this.onChanged,
    required this.options,
    this.label,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 140,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            label: Text(label ?? "Logic"),
          ),
          value: value,
          items: options.keys
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(options[e]!),
                  ))
              .toList(),
          onChanged: onChanged,
        ),
      );
}
