import 'package:flutter/material.dart';

typedef StringCallback = void Function(String);

class InputBox extends StatefulWidget {
  final StringCallback? onMessageSent;

  const InputBox({super.key, this.onMessageSent});

  @override
  createState() => InputBoxState();
}

class InputBoxState extends State<InputBox> {
  final TextEditingController _textController = TextEditingController();

  void _sendMessage() {
    if (_textController.text.isEmpty) {
      return;
    }

    setState(() {
      widget.onMessageSent?.call(_textController.text);
      _textController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            textInputAction: TextInputAction.go,
            controller: _textController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Send a message',
            ),
            maxLines: null,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black, // Adjust this color to fit your page's style
            ),
            onSubmitted: (text) => _sendMessage(),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.send),
          onPressed: _sendMessage,
        )
      ],
    );
  }
}
