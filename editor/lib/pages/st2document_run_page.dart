import 'dart:io';

import 'package:editor/editor/editor_store.dart';
import 'package:editor/chat/chat_runner.dart';
import 'package:editor/chat/chat_view.dart';
import 'package:editor/sillytavern/st2format.dart';
import 'package:flutter/material.dart';

class ST2DocumentRunPage extends StatelessWidget {
  final String filename;
  final ST2Spec spec;
  final EditorStore editorStore;
  late final ChatRunner session;

  ST2DocumentRunPage({super.key, required this.filename, required this.editorStore})
      : spec = ST2Spec.loadStCardSync(filename) {
    session = ChatRunner(spec.data, editorStore: editorStore);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(spec.data.name),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 320,
                child: Image.file(File(filename)),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: ChatRunnerView(
                  session: session,
                ),
              ),
            ),
          ],
        ),
      );
}
