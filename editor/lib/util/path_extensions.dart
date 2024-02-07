import 'package:path/path.dart' as path;
// ignore: implementation_imports

extension StringPath on String {
  String get basename {
    return path.basename(this);
  }

  String get extension {
    return path.extension(this);
  }
}


extension StringExtension on String {
  String? nullIfEmpty() => isEmpty ? null : this;
}