import 'package:flutter/material.dart';
import 'package:editor/chat/dialog_message.dart';

enum _MessageState { plain, italic, quote }

class MessageItemView extends StatelessWidget {
  final DialogMessage message;

  bool get isUser => message.isUserMessage;
  String get sender => message.role;

  const MessageItemView({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isUser ? Colors.lightBlue[100] : Colors.grey[200],
          ),
          child: Column(
            crossAxisAlignment: isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(sender, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800])),
              const SizedBox(height: 5),
              parseContent(message.message),
            ],
          ),
        ),
      ),
    );
  }

  Widget parseContent(String content) {
    var spans = <TextSpan>[];
    var buffer = StringBuffer();

    _MessageState messageState = _MessageState.plain;

    for (var i = 0; i < content.length; i++) {
      switch (messageState) {
        case _MessageState.italic:
          if (content[i] == "*") {
            // print("italic: ${buffer.toString()}");
            messageState = _MessageState.plain;
            spans.add(TextSpan(
              text: buffer.toString(),
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey[800]),
            ));
            buffer.clear();
          } else {
            buffer.write(content[i]);
          }
          break;
        case _MessageState.quote:
          if (content[i] == "\"") {
            messageState = _MessageState.plain;
            buffer.write(content[i]);
            // print("quote: ${buffer.toString()}");
            spans.add(TextSpan(
              text: buffer.toString(),
              style: const TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ));
            buffer.clear();
          } else {
            buffer.write(content[i]);
          }
          break;
        default:
          if (content[i] == "*") {
            if (buffer.isNotEmpty) {
              spans.add(TextSpan(
                  text: buffer.toString(),
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[800])));
              buffer.clear();
            }

            messageState = _MessageState.italic;
          } else if (content[i] == "\"") {
            if (buffer.isNotEmpty) {
              spans.add(TextSpan(
                  text: buffer.toString(),
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[800])));
              buffer.clear();
            }

            messageState = _MessageState.quote;
            buffer.write(content[i]);
          } else {
            buffer.write(content[i]);
          }
          break;
      }
    }

    if (buffer.isNotEmpty) {
      spans.add(TextSpan(
        text: buffer.toString(),
        style: TextStyle(
            fontStyle: messageState == _MessageState.italic ? FontStyle.italic : FontStyle.normal,
            fontWeight: messageState == _MessageState.italic ? FontWeight.w300 : FontWeight.normal,
            color: messageState == _MessageState.quote ? Colors.orange : Colors.grey[800]),
      ));
      buffer.clear();
    }

    return SelectableText.rich(
      TextSpan(children: spans),
      onSelectionChanged: (selection, cause) {
        // print(_selectedContent);
      },
    );
  }
}
