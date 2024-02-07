import 'dart:async';
import 'dart:io';
import 'package:editor/character/model/st2document_model.dart';
import 'package:logging/logging.dart';
import 'package:image/image.dart' as imagelib;
import 'package:editor/sillytavern/st2format.dart';

final _logger = Logger('ST2Repository');

class ST2Repository with _OpenFile {}

mixin _OpenFile {
  StreamController<String> fileSavedStream = StreamController<String>.broadcast();

  Future<ST2Spec> openFile(String filename) async {
    final characterData = await ST2Spec.loadStCard(filename);
    return ST2Spec.fromJson(characterData as Map<String, dynamic>);
  }

  Future<bool> saveDocumentToFile(ST2DocumentModel model, String filename,
      {bool eraseFileImageCache = true}) async {
    if (model.imageFile.isEmpty) {
      _logger.severe('saveDocumentToFile: failed imageFile is empty');
      return false;
    }

    var cardImage = await _readImageFromFile(model.imageFile);
    if (cardImage == null) {
      _logger.severe('saveDocumentToFile: failed to read image file');
      return false;
    }

    cardImage.spec = model.toST2Spec();
    // _logger.info('saveDocumentToFile: saving to $filename');
    // _logger.info('${cardImage.spec.toJson()}');

    await cardImage.saveAsFile(filename);

    // send notification out to listeners
    fileSavedStream.add(filename);
    return true;
  }

  Future<imagelib.Image?> _readImageFromFile(String imagePath) async {
    try {
      final image = File(imagePath);
      final bytes = await image.readAsBytes();
      return imagelib.decodePng(bytes)!;
    } catch (e) {
      _logger.severe("Error reading image file $e");
      return null;
    }
  }
}
