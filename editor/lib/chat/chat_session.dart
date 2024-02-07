import 'package:editor/chat/chat.dart';

abstract class ChatSession {
  Chat get chat;
  String get name;
  bool get isCreatorChat {
    return false;
  }

  void clear();
  Future<String?> getNextReply(String message);
  loadChat(String content) => throw UnimplementedError();

  // use chat history to fillup character property
  Future<void> fillupCharacter() async {}
}
