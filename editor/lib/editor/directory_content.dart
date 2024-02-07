import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:editor/util/path_extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:editor/chat/dialog_message.dart';
import 'package:editor/sillytavern/st2format.dart';
part 'directory_content.freezed.dart';

@freezed
class DirectoryItem with _$DirectoryItem {
  const DirectoryItem._();

  const factory DirectoryItem.item({
    required String displayName,
    required FileSystemEntity entity,
  }) = _DirectoryItem;

  factory DirectoryItem.st2card({
    required FileSystemEntity entity,
    required ST2Spec spec,
  }) = _ST2Card;

  factory DirectoryItem.parent({
    required FileSystemEntity entity,
  }) = _ParentItem;

  factory DirectoryItem.entity({
    required FileSystemEntity entity,
  }) =>
      DirectoryItem.item(displayName: entity.path.basename, entity: entity);

  bool get isST2Card => this is _ST2Card;
  bool get isPNG => entity.path.extension == ".png";
  bool get isFile => entity is File;
  bool get isDirectory => entity is Directory;

  String get filename => (this is _ParentItem) ? ".." : entity.path.basename;
  String get name => when(
        item: (displayName, entity) => displayName,
        parent: (entity) => '..',
        st2card: (entity, spec) =>
            spec.data.name.isNotEmpty ? spec.data.name : entity.path.basename,
      );
  String get path => entity.path;

  Future<DirectoryItem> parseContent() async {
    if (this is _ST2Card) {
      return this;
    } else if (this is _ParentItem) {
      return this;
    } else if (isDirectory) {
      return this;
    } else if (isFile && isPNG) {
      try {
        final spec = await ST2Spec.fromTavernSpecv2(entity.path);
        return DirectoryItem.st2card(entity: entity, spec: spec);
      } catch (ex) {
        print('error parsing ${entity.path}');
        return this;
      }
    } else {
      return this;
    }
  }
}

@freezed
class DirectoryContent with _$DirectoryContent {
  const DirectoryContent._();

  const factory DirectoryContent({
    required BuiltList<DirectoryItem> entities,
  }) = _DirectoryContent;

  factory DirectoryContent.empty() => DirectoryContent(entities: BuiltList());

  factory DirectoryContent.fromDirectory(Directory directory, {bool containsParent = true}) {
    final entities = directory
        .listSync()
        .where((element) =>
            (!element.path.startsWith('.')) &&
            ((element is Directory) || element.path.extension == ".png"))
        .map((e) => DirectoryItem.entity(entity: e))
        .toList();
    if (containsParent && directory.parent.existsSync()) {
      entities.insert(0, DirectoryItem.parent(entity: directory.parent));
    }
    return DirectoryContent(entities: BuiltList(entities));
  }
}
