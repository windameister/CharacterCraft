import 'dart:io';

import 'package:editor/editor/copilot_store.dart';
import 'package:editor/character/model/st2document_store.dart';
import 'package:editor/character/widget/copilot_widget.dart';
import 'package:editor/character/widget/st2document_widget.dart';
import 'package:editor/chat/chat_view.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class ST2DocumentEditPage extends StatelessWidget {
  const ST2DocumentEditPage({super.key});

  _showExitDialog(BuildContext context) => showDialog<bool>(
        barrierColor: Colors.black54,
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.white,
          title: const Text('File is not saved, close without saving?'),
          content: const Text(
            'If you close this file, your change won\'t be applied to file. Do you want to close it?',
          ),
          actions: [
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.pop(context, true);
                // Delete file here
              },
            ),
            FilledButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.pop(context, false),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          Provider(create: (context) => ST2CharacterBookStore2(parent: context.read())),
          Provider(create: (context) => ST2CharacterStore2(parent: context.read())),
          Provider(
            create: (context) => CopilotStore(
              parent: context.read(),
              editorStore: context.read(),
            ),
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () async {
                if (!context.read<ST2DocumentStore2>().isDirty) {
                  Navigator.pop(context);
                } else if (await _showExitDialog(context) == true) {
                  Navigator.pop(context);
                }
              },
            ),
            title: _DocumentNavWidget(document: context.read()),
            actions: const [
              _RunButton(),
              _SaveButton(),
              _UndoButton(),
              _RedoButton(),
            ],
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(1),
              child: Divider(height: 1),
            ),
          ),
          body: const Row(
            children: [
              Flexible(
                child: ST2DocumentWidget(),
              ),
              VerticalDivider(width: 1),
              Flexible(
                child: _CoEditingWidget(),
              ),
            ],
          ),
        ),
      );
}

class _CoEditingWidget extends StatelessWidget {
  const _CoEditingWidget();

  bool _isEmpty(BuildContext context) {
    return !context.read<ST2DocumentStore2>().hasFile;
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        initialIndex: _isEmpty(context) ? 0 : 1,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: const _CoEditingHeaderBar(),
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(1),
              child: Divider(height: 1),
            ),
          ),
          body: const TabBarView(
            children: [
              ChatBuilderWidget(),
              CopilotWidget(),
            ],
          ),
        ),
      );
}

class _DocumentNavWidget extends StatelessWidget {
  final ST2DocumentStore2 document;
  const _DocumentNavWidget({required this.document});

  @override
  Widget build(BuildContext context) => Observer(
        builder: (_) => Row(
          children: [
            Image(
              image: document.imageFile.isEmpty
                  ? const AssetImage('assets/images/placeholder.png') as ImageProvider
                  : FileImage(File(document.imageFile)),
              width: 56,
              height: 56,
              fit: BoxFit.contain,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(document.title),
                  Text(
                      document.hasFile
                          ? document.isDirty
                              ? "unsaved modification exists"
                              : "unchanged"
                          : "new file",
                      style: Theme.of(context).textTheme.labelSmall),
                ],
              ),
            ),
          ],
        ),
      );
}

class _CoEditingHeaderBar extends StatelessWidget {
  const _CoEditingHeaderBar();

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 280), // You can adjust this value as needed
          child: Container(
            decoration: BoxDecoration(
              border: Border.symmetric(
                vertical: BorderSide(
                  color: Theme.of(context).dividerColor,
                  width: 1,
                ),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(4),
              child: TabBar(
                tabs: [
                  Tab(text: "Create"),
                  Tab(text: "Copilot"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _RunButton extends StatelessWidget {
  const _RunButton();

  @override
  Widget build(BuildContext context) => Consumer<ST2DocumentStore2>(
        builder: (context, store, child) => Observer(
          builder: (_) => IconButton(
            icon: const Icon(Icons.play_arrow),
            onPressed: (store.isDirty || !store.hasFile)
                ? null // do not run a file with unsaved content (including new file)
                : () async {
                    if (store.hasFile) {
                      Navigator.pushNamed(context, '/run_document', arguments: store.filename);
                    }
                  },
            // Disable the button if the document is not dirty
          ),
        ),
      );
}

class _SaveButton extends StatelessWidget {
  const _SaveButton();

  Future<String?> _pickFileToSave(BuildContext context) async {
    return await FilePicker.platform.saveFile(
      dialogTitle: 'Save as',
      type: FileType.image,
      allowedExtensions: ['png'],
      lockParentWindow: true,
    );
  }

  @override
  Widget build(BuildContext context) => Consumer<ST2DocumentStore2>(
        builder: (context, store, child) => Observer(
          builder: (_) => IconButton(
            icon: const Icon(Icons.save),
            onPressed: store.isDirty
                ? () async {
                    if (!store.hasFile) {
                      final file = await _pickFileToSave(context);
                      if (file == null) return;
                      store.filename = file;
                    }

                    final ret = await store.saveAuto();
                    if (!ret) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Failed to save file.'),
                        ),
                      );
                    }
                  }
                : null,
            // Disable the button if the document is not dirty
          ),
        ),
      );
}

class _UndoButton extends StatelessWidget {
  const _UndoButton();

  @override
  Widget build(BuildContext context) => Consumer<ST2DocumentStore2>(
        builder: (_, store, child) => Observer(
          builder: (_) => IconButton(
            icon: const Icon(Icons.undo),
            onPressed: store.canUndo ? () => store.undo() : null,
          ),
        ),
      );
}

class _RedoButton extends StatelessWidget {
  const _RedoButton();

  @override
  Widget build(BuildContext context) => Consumer<ST2DocumentStore2>(
        builder: (_, store, child) => Observer(
          builder: (_) => IconButton(
            icon: const Icon(Icons.redo),
            onPressed: store.canRedo ? () => store.redo() : null,
          ),
        ),
      );
}
