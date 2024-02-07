import 'package:openai_api/openai_api.dart';
import 'package:editor/chat/dialog_message.dart';

abstract class LLMConnection {
  Future<DialogMessage?> chatCompletion(List<DialogMessage> messages) async => null;
}

class LLMNotConfiguredException implements Exception {
  final String message;
  LLMNotConfiguredException({this.message = "LLM not configured"});
}

class LLMOpenAI extends LLMConnection {
  OpenaiConfig? config;

  LLMOpenAI({this.config});

  @override
  Future<DialogMessage?> chatCompletion(List<DialogMessage> messages,
      {String model = 'gpt-3.5-turbo-16k', bool respInJson = false}) async {
    if (config == null) {
      throw LLMNotConfiguredException();
    }

    final client = OpenaiClient(config: config!);

    print('chat completion: $messages, using $model');

    final req = ChatCompletionRequest(
        model: model,
        responseFormat: respInJson ? const ResponseFormat(type: 'json_object') : null,
        messages: messages.map((e) => {'role': e.role, 'content': e.message}).toList());

    final resp = await client.sendChatCompletion(req);
    final message = resp.choices.first.message;
    if (message == null) {
      return null;
    }

    // print('chat completion: ${message.content} of role ${message.role}');
    return DialogMessage(message: message.content, role: DialogMessage.ASSISTANT);
  }
}
