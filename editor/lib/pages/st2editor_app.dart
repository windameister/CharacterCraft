import 'dart:io';

import 'package:editor/character/model/st2document_store.dart';
import 'package:editor/pages/settings_page.dart';
import 'package:editor/pages/diskexplorer_page.dart';
import 'package:editor/pages/st2document_edit_page.dart';
import 'package:editor/pages/st2document_run_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ST2EditorApp extends StatelessWidget {
  const ST2EditorApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Character Craft (SillyTavern.ai | Character.ai)',
        theme: ThemeData(
          colorScheme: const ColorScheme.light(),
          useMaterial3: true,
        ),
        home: const DiskExplorerPage(),
        onGenerateRoute: (settings) {
          if (settings.name == '/new_document') {
            return MaterialPageRoute(
              builder: (context) => Provider(
                  create: (context) => ST2DocumentStore2.empty(context.read()),
                  child: const ST2DocumentEditPage()),
            );
          } else if (settings.name == '/edit_document') {
            final path = settings.arguments as String;
            return MaterialPageRoute(
              builder: (context) {
                return Provider(
                    create: (context) => ST2DocumentStore2.fromFile(path, context.read()),
                    child: const ST2DocumentEditPage());
              },
            );
          } else if (settings.name == '/run_document') {
            final path = settings.arguments as String;
            return MaterialPageRoute(
              builder: (context) => ST2DocumentRunPage(
                filename: path,
                editorStore: context.read(),
              ),
            );
          } else if (settings.name == '/settings') {
            return MaterialPageRoute(
              builder: (context) => const SettingsPage(),
            );
          }
        },
      );
}
