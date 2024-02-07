import 'dart:io';

import 'package:editor/editor/directory_content.dart';
import 'package:editor/editor/editor_store.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class DiskExplorerPage extends StatelessWidget {
  const DiskExplorerPage({super.key});

  @override
  Widget build(BuildContext context) => Consumer<EditorStore>(
        builder: (_, store, child) => Scaffold(
          appBar: AppBar(
            leading: _SettingButton(),
            title: Observer(
              builder: (_) => Text(
                store.workingDir,
                style: Theme.of(context).textTheme.labelMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(1),
              child: Divider(height: 1),
            ),
            actions: [
              _ChangeDirButton(store: store),
              _NewFileButton(store: store),
            ],
          ),
          body: Row(
            children: [
              SizedBox(width: 320, child: _FileListView(store: store)),
              const VerticalDivider(
                width: 1,
              ),
              Expanded(
                child: _FilesGrid(store),
              ),
            ],
          ),
        ),
      );
}

class _FileListView extends StatelessWidget {
  final EditorStore store;
  const _FileListView({
    required this.store,
  });

  @override
  Widget build(BuildContext context) => Observer(
        builder: (_) => ListView.builder(
          itemCount: store.directoryContent.entities.length,
          itemBuilder: (BuildContext context, int index) {
            final entity = store.directoryContent.entities[index];
            return ListTile(
              title: Text(entity.filename),
              leading: Icon(entity.isDirectory ? Icons.folder : Icons.file_copy),
              onTap: () {
                if (entity.isDirectory) {
                  store.changeDirectory(entity.path);
                  return;
                }

                if (entity.isST2Card) {
                  Navigator.pushNamed(context, '/edit_document', arguments: entity.path);
                  return;
                }
              },
            );
          },
        ),
      );
}

class _FilesGrid extends StatelessWidget {
  final EditorStore store;
  const _FilesGrid(this.store);

  @override
  Widget build(BuildContext context) => Observer(
        builder: (_) => GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 220,
            childAspectRatio: 180 / 240,
          ),
          itemBuilder: (BuildContext context, int index) {
            final entity = store.directoryContent.entities[index];
            if (entity.isDirectory) {
              return _FolderItem(entity: entity);
            } else if (entity.isST2Card) {
              return _ST2CardItem(entity: store.directoryContent.entities[index]);
            } else {
              return FutureBuilder<DirectoryItem>(
                future: store.parseDirectoryItem(index),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    if (entity.isST2Card) {
                      return _ST2CardItem(entity: snapshot.data!);
                    } else {
                      return _FileItem(entity: entity);
                    }
                  } else {
                    return _FileItem(entity: entity);
                  }
                },
              );
            }
          },
          itemCount: store.directoryContent.entities.length,
        ),
      );
}

class _ST2CardItem extends StatelessWidget {
  const _ST2CardItem({
    required this.entity,
  });

  final DirectoryItem entity;

  @override
  Widget build(BuildContext context) {
    return _TappableGridItem(
      filename: entity.filename,
      charName: entity.name,
      onDoubleTap: () {
        Navigator.pushNamed(context, '/edit_document', arguments: entity.path);
      },
      onRun: () {
        Navigator.pushNamed(context, '/run_document', arguments: entity.path);
      },
      onEdit: () {
        Navigator.pushNamed(context, '/edit_document', arguments: entity.path);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0), // Adjust the padding as needed
        child: Image(
          image: FileImage(File(entity.path)),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class _FolderItem extends StatelessWidget {
  const _FolderItem({
    required this.entity,
  });

  final DirectoryItem entity;

  @override
  Widget build(BuildContext context) {
    return _TappableGridItem(
      onDoubleTap: () {
        context.read<EditorStore>().changeDirectory(entity.path);
      },
      filename: entity.filename,
      child: const Icon(Icons.folder),
    );
  }
}

class _FileItem extends StatelessWidget {
  const _FileItem({
    required this.entity,
  });

  final DirectoryItem entity;

  @override
  Widget build(BuildContext context) {
    return _TappableGridItem(
      filename: entity.filename,
      child: const Icon(Icons.file_copy),
    );
  }
}

class _TappableGridItem extends StatelessWidget {
  final VoidCallback? onDoubleTap;
  final String filename;
  final String? charName;
  final Widget child;
  final Widget? footer;
  final VoidCallback? onRun;
  final VoidCallback? onEdit;

  const _TappableGridItem({
    required this.filename,
    required this.child,
    this.onDoubleTap,
    this.charName,
    this.footer,
    this.onRun,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onDoubleTap: onDoubleTap,
        child: SizedBox(
          width: 200,
          height: 240,
          child: Column(
            children: [
              Expanded(
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (charName != null)
                        Text(
                          charName!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      Expanded(child: child),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          if (onRun != null)
                            TextButton(
                              onPressed: onRun,
                              child: const Text("Play"),
                            ),
                          if (onEdit != null)
                            TextButton(
                              onPressed: onEdit,
                              child: const Text("Edit"),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                filename,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      );
}

class _SettingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: () {
          Navigator.pushNamed(context, '/settings');
        },
        icon: const Icon(Icons.settings),
      );
}

class _ChangeDirButton extends StatelessWidget {
  final EditorStore store;

  const _ChangeDirButton({required this.store});

  Future<String?> _pickPath() async {
    return await FilePicker.platform.getDirectoryPath(
      dialogTitle: "Pick a working directory",
      lockParentWindow: true,
      initialDirectory: store.workingDir,
    );
  }

  @override
  Widget build(BuildContext context) => IconButton(
      onPressed: () async {
        final path = await _pickPath();
        if (path == null) {
          return;
        }
        store.changeDirectory(path);
      },
      icon: const Icon(Icons.folder));
}

class _NewFileButton extends StatelessWidget {
  final EditorStore store;

  const _NewFileButton({required this.store});

  @override
  Widget build(BuildContext context) => IconButton(
      onPressed: () async {
        Navigator.pushNamed(context, '/new_document');
      },
      icon: const Icon(Icons.add));
}
