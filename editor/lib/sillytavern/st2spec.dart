// this represents our understanding of the SillyTavern 2.0 data spec
// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart';

import './st2data.dart';

part 'st2spec.freezed.dart';
part 'st2spec.g.dart';

class ST2DataConverter implements JsonConverter<ST2Data, Map<String, dynamic>> {
  const ST2DataConverter();

  @override
  ST2Data fromJson(Map<String, dynamic> json) {
    return ST2Data.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(ST2Data data) => data.toJson();
}

@freezed
class ST2Spec with _$ST2Spec {
  const ST2Spec._();

  // SillyTavern spec version is 2.0
  static const String kSpecVersion = '2.0';
  static const String kSpec = 'chara_card_v2';

  const factory ST2Spec({
    @JsonKey(defaultValue: ST2Spec.kSpec) required String spec,
    @JsonKey(name: 'spec_version', defaultValue: ST2Spec.kSpecVersion) required String specVersion,
    @ST2DataConverter() required ST2Data data,
  }) = _ST2Spec;

  factory ST2Spec.fromJson(Map<String, dynamic> json) => _$ST2SpecFromJson(json);

  factory ST2Spec.fromData(ST2Data data) {
    return ST2Spec(spec: kSpec, specVersion: kSpecVersion, data: data);
  }

  static Future<Image?> loadCardImage(String filename) async {
    final characterFile = File(filename);
    final bytes = await characterFile.readAsBytes();
    final image = decodePng(bytes)!;
    return image;
  }

  static ST2Spec loadSpecFromCardImage(Image image) {
    final tagRaw = image.textData!['chara']!;
    final tagValueBytes = base64Decode(tagRaw);
    final value = utf8.decode(tagValueBytes);
    final characterData = jsonDecode(value);
    return ST2Spec.fromJson(characterData as Map<String, dynamic>);
  }

  static Future<dynamic> loadStCard(String filename) async {
    final characterFile = File(filename);
    final bytes = await characterFile.readAsBytes();
    final image = decodePng(bytes)!;
    final tagRaw = image.textData!['chara']!;
    final tagValueBytes = base64Decode(tagRaw);
    final value = utf8.decode(tagValueBytes);
    final character = jsonDecode(value);
    return character;
  }

  static ST2Spec loadStCardSync(String filename) {
    final characterFile = File(filename);
    final bytes = characterFile.readAsBytesSync();
    final image = decodePng(bytes)!;
    final tagRaw = image.textData!['chara']!;
    final tagValueBytes = base64Decode(tagRaw);
    final value = utf8.decode(tagValueBytes);
    final character = jsonDecode(value);
    return ST2Spec.fromJson(character as Map<String, dynamic>);
  }

  static Future<ST2Spec> fromTavernSpecv2(String filename) async {
    final characterData = await loadStCard(filename);
    return ST2Spec.fromJson(characterData as Map<String, dynamic>);
  }

  static ST2Spec makeSpec(ST2Data data) {
    return ST2Spec(spec: kSpec, specVersion: kSpecVersion, data: data);
  }
}

extension ImageEmbedST2Spec on Image {
  ST2Spec get spec {
    final tagRaw = textData!['chara']!;
    final tagValueBytes = base64Decode(tagRaw);
    final value = utf8.decode(tagValueBytes);
    final characterData = jsonDecode(value);
    return ST2Spec.fromJson(characterData as Map<String, dynamic>);
  }

  set spec(ST2Spec spec) {
    final characterData = jsonEncode(spec);
    final characterBytes = utf8.encode(characterData);
    final characterBase64 = base64Encode(characterBytes);
    addTextData({'chara': characterBase64});
  }

  saveAsFile(String fileName) async {
    final characterFile = File(fileName);
    final png = encodePng(this);
    await characterFile.writeAsBytes(png);
  }
}
