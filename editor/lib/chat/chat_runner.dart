import 'dart:convert';
import 'dart:math';

import 'package:editor/editor/editor_store.dart';
import 'package:editor/chat/chat.dart';
import 'package:editor/chat/chat_session.dart';
import 'package:editor/chat/llm_connection.dart';
import 'package:editor/chat/prompt_assembler.dart';
import 'package:editor/chat/dialog_message.dart';
import 'package:editor/sillytavern/st2format.dart';

import 'package:openai_api/openai_api.dart';


// ChatSession is a session holding a chat
// It contains the prompt and including the chat history
// Use silly tavern spec to make a chat session
class ChatRunner extends ChatSession {
  final EditorStore editorStore;

  ST2Data data;

  @override
  Chat chat = Chat();

  @override
  String get name => data.name;

  final promptAssembler = PromptAssembler(true, true);

  final bool isCreatorSession;

  late Map<String, dynamic> varMap;

  ChatRunner(this.data, {this.isCreatorSession = false, required this.editorStore}) {
    varMap = promptAssembler.getVarsMap(data.name, 'user');
    _addGreeting();
  }

  void _addGreeting() {
    if (data.firstMes.isNotEmpty) {
      final allGreetings = data.allGreetings;
      chat.addMessage(
        DialogMessage.assistant(
          message: promptAssembler.renderPrompts(
            allGreetings[Random().nextInt(allGreetings.length)],
            varMap,
          ),
        ),
      );
    }
  }

  void addMessage(DialogMessage message) {
    chat.addMessage(message);
  }

  @override
  loadChat(String content) {
    try {
      final mesHistory = MessageHistory.fromJson(jsonDecode(content));
      chat.resetMessages(mesHistory.messages);
      print('Loaded chat history: ${chat.messages.length}');
    } catch (e) {
      print(e);
    }
  }

  @override
  void clear() {
    chat.clear();
    _addGreeting();
  }

  @override
  Future<String?> getNextReply(String message) async {
    if (!editorStore.aiConnectionReady) {
      return null;
    }

    // Add the user's message to the chat
    chat.addMessage(DialogMessage.user(message: message));

    final messages = promptAssembler.assemblePrompt(DialogMessage.USER, data, chat);

    final config = OpenaiConfig(apiKey: editorStore.apiKey!, apiBaseUrl: editorStore.apiBaseUrl!);
    final reply =
        await LLMOpenAI(config: config).chatCompletion(messages, model: editorStore.model);
    if (reply == null) {
      return null;
    }

    // Add the reply to the chat
    chat.addMessage(reply);
    return reply.message;
  }
}
