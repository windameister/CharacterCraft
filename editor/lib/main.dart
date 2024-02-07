import 'dart:io';

import 'package:editor/editor/editor_store.dart';
import 'package:editor/pages/st2editor_app.dart';
import 'package:provider/provider.dart';
import 'package:editor/find_service.dart';
import 'initializers.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';
import 'package:package_info_plus/package_info_plus.dart';

const version = '0.1';

setupWindow() async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  String version = packageInfo.version;
  String buildNumber = packageInfo.buildNumber;
  setWindowTitle("Character Craft (with Copilot) - Support Tavern v2 ($version.$buildNumber)");
  setWindowMinSize(const Size(1200, 800));
}

main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupWindow();
  await initServices();

  final editorStore = EditorStore(
    editorPreference: findService(),
    aiConnectionPreference: findService(),
  );

  runApp(
    Provider.value(
      value: editorStore,
      child: const ST2EditorApp(),
    ),
  );
}
