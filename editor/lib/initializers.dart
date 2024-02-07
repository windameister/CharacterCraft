import 'dart:io';

import 'package:editor/character/repository/st2_repository.dart';
import 'package:editor/editor_preferences.dart';
import 'package:editor/app_preferences.dart';
import 'package:editor/find_service.dart';
import 'package:editor/util/create_app_preferences.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:app_preference_shared_preferences/app_preference_shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_tiktoken/flutter_tiktoken.dart';

final _logger = Logger('initServices');

void _setupLogging() {
  Logger.root.level = Level.ALL; // Set this level to control which log messages to show

  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

Future<void> initServices() async {
  _setupLogging();

  _logger.info('initServices, clear all preferences');

  /// clean pref
  final inst = await SharedPreferences.getInstance();
  await inst.clear();
  /// clean pref

  _initDependencies();

  await TiktokenDataProcessCenter().initCl100kBaseData();

  _logger.info('Wait for all ready');
  await findService.allReady();
  _logger.info('All ready');
}

void _initDependencies() {
  _logger.info('Init runtime configs...');

  _logger.info('Init preference storages...');
  findService
    ..registerSingletonAsync(createSharedPreferences)
    ..registerSingletonWithDependencies(
      () => SharedPreferencesAdapter(findService()),
      dependsOn: [SharedPreferences],
    );

  _logger.info('Init app preferences...');
  findService
    ..registerSingletonWithDependencies(
      () => AiConnectionPreference(findService()),
      dependsOn: [SharedPreferencesAdapter],
    )
    ..registerSingletonWithDependencies(
      () => EditorPreference(findService()),
      dependsOn: [SharedPreferencesAdapter],
    )
    ;

  _logger.info('Init repositories...');

  findService.registerSingleton(ST2Repository());

  // image cache should be updated when file is saved (st2 format use png to store the data)
  setupOnFileSavingCallback();
}

void setupOnFileSavingCallback() {
  findService.get<ST2Repository>().fileSavedStream.stream.listen((filename) {
    print("file saved: $filename");
    PaintingBinding.instance.imageCache.evict(FileImage(File(filename)));
  });
}
