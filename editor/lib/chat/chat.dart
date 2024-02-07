import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:editor/chat/dialog_message.dart';

part 'chat.g.dart';

class Chat = ChatBase with _$Chat;

abstract class ChatBase with Store {
  @observable
  ObservableList<DialogMessage> messages = ObservableList<DialogMessage>();

  @action
  addMessage(DialogMessage message) {
    messages.add(message);
  }

  @action
  void clear() {
    messages.clear();
  }

  @action
  void resetMessages(List<DialogMessage> messages) {
    this.messages.clear();
    this.messages.addAll(messages);
  }

  String toJson() {
    return jsonEncode(MessageHistory(messages: messages).toJson());
  }
}
