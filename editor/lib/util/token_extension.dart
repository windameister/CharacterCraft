import 'package:flutter_tiktoken/flutter_tiktoken.dart';

int countToken(String content) => getEncoding("cl100k_base").encode(content).length;

extension TokenCounter on String {
  int getTokenCount() {
    return countToken(this);
  }
}
