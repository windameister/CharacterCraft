import 'dart:io';

import 'package:editor/character/model/st2document_store.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class CharacterImageWidget extends StatelessWidget {
  const CharacterImageWidget({super.key});

  Future<String?> _pickImageFile() async {
    final ret = await FilePicker.platform.pickFiles(
      dialogTitle: "Pick an image",
      type: FileType.image,
      allowedExtensions: ['png'],
      lockParentWindow: true,
    );

    if (ret == null || ret.files.isEmpty) {
      return null;
    }

    return ret.files.first.path;
  }

  _changeImage(ST2CharacterStore2 store) async {
    final updatedImage = await _pickImageFile();
    if (updatedImage == null) {
      return;
    }

    store.updateImageFile(updatedImage);
  }

  _resetImage(ST2CharacterStore2 store) {
    store.updateImageFile('');
  }

  @override
  Widget build(BuildContext context) => Consumer<ST2CharacterStore2>(
        builder: (_, store, child) => Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _changeImage(store),
              child: Observer(
                builder: (context) => Image(
                  alignment: Alignment.center,
                  image: store.imageFile.isEmpty
                      ? const AssetImage('assets/images/placeholder.png') as ImageProvider
                      : FileImage(File(store.imageFile)),
                  width: 160,
                  height: 240,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () => _changeImage(store),
                  icon: const Icon(Icons.image),
                  label: const Text("Change"),
                ),
                TextButton.icon(
                  onPressed: () => _resetImage(store),
                  icon: const Icon(Icons.clear),
                  label: const Text("Clear"),
                ),
              ],
            ),
            TextButton.icon(
              onPressed: () => _genPromptAndUse(context, store),
              icon: const Icon(Icons.text_fields),
              label: const Text("Gen Image Prompt"),
            ),
          ],
        ),
      );

  // _genPromptAndUse(BuildContext context, ST2CharacterStore2 store) async {
  //   String prompt = await store.generateCharacterImagePrompts();

  //   await Clipboard.setData(ClipboardData(text: prompt));

  //   // show prompt
  //   const snackBar = SnackBar(
  //     content: Text(
  //         'Generated Prompt is copied to Clipboard! You can goto a Image generation service to generate the image.'),
  //   );

  //   // Find the ScaffoldMessenger in the widget tree
  //   // and use it to show a SnackBar.
  //   ScaffoldMessenger.of(context).showSnackBar(snackBar);

  //   launchUrl(Uri.https("pixai.art", "/generator/image"));
  // }

  _genPromptAndUse(BuildContext context, ST2CharacterStore2 store, {bool forRegen = false}) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return FutureBuilder<String>(
          future: store.generateCharacterImagePrompts(forceRegen: forRegen),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Dialog(
                child: Container(
                  padding: const EdgeInsets.all(24),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      CircularProgressIndicator(),
                      Text("Generating image prompt for character..."),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return AlertDialog(
                title: const Text('Error'),
                content: Text('Error generating prompt: ${snapshot.error}'),
                actions: <Widget>[
                  TextButton(
                    child: const Text('Close'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            } else {
              return AlertDialog(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Generated Character Image Prompt'),
                    IconButton(
                        onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close))
                  ],
                ),
                content: TextField(
                  controller: TextEditingController(text: snapshot.data),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  maxLines: null,
                ),
                actions: <Widget>[
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        _genPromptAndUse(context, store, forRegen: true);
                      },
                      child: const Text("Regenerate")),
                  TextButton(
                    child: const Text('Copy to Clipboard'),
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: snapshot.data ?? ''));
                      // Navigator.of(context).pop();
                      const snackBar = SnackBar(
                        content: Text('Generated Prompt is copied to Clipboard!'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                  TextButton(
                    child: const Text('Gen image via pixai.art'),
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: snapshot.data ?? ''));

                      launchUrl(Uri.https("pixai.art", "/generator/image"));
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: snapshot.data ?? ''));

                      launchUrl(Uri.https("chat.openai.com"));
                    },
                    child: const Text("Gen image via chatgpt"),
                  )
                ],
              );
            }
          },
        );
      },
    );
  }
}
