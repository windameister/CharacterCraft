import 'package:editor/character/model/st2character_model.dart';
import 'package:editor/character/model/st2document_store.dart';
import 'package:editor/character/widget/character_field_editor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:editor/setting/settings_widgets.dart';

class ST2GreetingsWidget extends StatelessWidget {
  const ST2GreetingsWidget({super.key});

  @override
  Widget build(BuildContext context) => const _GreetingMesListWidget();
}

class _GreetingMesListWidget extends StatefulWidget {
  const _GreetingMesListWidget();

  @override
  State<_GreetingMesListWidget> createState() => _GreetingMesListState();
}

class _GreetingMesListState extends State<_GreetingMesListWidget> {
  late final ST2CharacterGreetingsStore store;

  late final Map<String, TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();

    store = ST2CharacterGreetingsStore(parent: context.read());
    _controllers = {
      for (var p0 in store.greetingMes) p0.id: TextEditingController(text: p0.mes),
    };
  }

  @override
  void dispose() {
    super.dispose();
    _controllers.forEach((key, value) {
      value.dispose();
    });
  }

  TextEditingController getController(GreetingMes data) {
    if (_controllers.containsKey(data.id)) return _controllers[data.id]!;
    final controller = TextEditingController(text: data.mes);
    _controllers[data.id] = controller;
    return controller;
  }

  _removeController(String id) {
    if (_controllers.containsKey(id)) {
      _controllers[id]!.dispose();
      _controllers.remove(id);
    }
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const ListTile(
            title: Text("FirstMes & Alternative Greetings"),
            subtitle: SizedBox(
              height: 8,
            ),
          ),
          Observer(
            builder: (_) => ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: store.greetingMes.length,
              itemBuilder: (context, index) {
                final data = store.greetingMes[index];
                return _GreetingMesFieldEditor(
                  key: Key(data.id),
                  name: index == 0 ? "FirstMes" : "Alternative Greetings $index",
                  controller: getController(data),
                  onChanged: (value, originalValue) {
                    if (originalValue != null) {
                      store.recordHistory(index, originalValue);
                    }
                    store.updateGreetings(index, value);
                  },
                  onRemoved: index == 0 || store.greetingMes.length <= 1
                      ? null
                      : () {
                          if (store.removeGreetings(index)) {
                            _removeController(data.id);
                            setState(() {});
                          }
                        },
                );
              },
              separatorBuilder: (context, index) => SettingsGap.small(),
            ),
          ),
        ],
      );
}

class _GreetingMesFieldEditor extends StatelessWidget {
  final String name;
  final TextEditingController controller;
  final ValueUpdated<String> onChanged;
  final VoidCallback? onRemoved;

  const _GreetingMesFieldEditor({
    required this.name,
    required this.controller,
    required this.onChanged,
    required this.onRemoved,
    super.key,
  });

  @override
  Widget build(BuildContext context) => CharacterFieldEditor(
        name: name,
        controller: controller,
        onChanged: onChanged,
        customEditButton: onRemoved == null
            ? null
            : IconButton.filled(
                onPressed: onRemoved,
                icon: const Icon(Icons.delete),
              ),
      );
}
