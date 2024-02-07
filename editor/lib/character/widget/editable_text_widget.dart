import 'package:flutter/material.dart';

class EditableTextWidget extends StatefulWidget {
  final ValueChanged<String>? onChanged;
  final String text;
  const EditableTextWidget({
    super.key,
    required this.text,
    this.onChanged,
  });

  @override
  State<EditableTextWidget> createState() => EditableTextWidgetState();
}

class EditableTextWidgetState extends State<EditableTextWidget> {
  late TextEditingController _controller;
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isEditing = true;
        });
      },
      child: _isEditing ? _buildTextField() : _buildText(),
    );
  }

  Widget _buildText() {
    return Text(_controller.text);
  }

  Widget _buildTextField() {
    return TextField(
      controller: _controller,
      autofocus: true,
      maxLines: null, // allow multiple lines
      onChanged: widget.onChanged,
      onSubmitted: (value) {
        setState(() {
          _isEditing = false;
        });
      },
    );
  }
}
