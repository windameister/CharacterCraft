import 'dart:io';

import 'package:editor/editor/editor_store.dart';
import 'package:editor/character/model/st2document_store.dart';
import 'package:editor/chat/chat.dart';
import 'package:editor/chat/chat_session.dart';
import 'package:editor/chat/input_box_widget.dart';
import 'package:editor/chat/message_itemview.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class ChatBuilderWidget extends StatefulWidget {
  const ChatBuilderWidget({super.key});

  @override
  State<ChatBuilderWidget> createState() => _ChatBuilderWidgetState();
}

mixin _ChatSessionMixin {
  final ScrollController _scrollController = ScrollController();
  ChatSession get session;
  Chat get chat => session.chat;
  String get name => session.name;

  Future<String> _pickConversationToLoad() async {
    final fileToLoad = await FilePicker.platform.pickFiles(
      dialogTitle: 'Load chat session',
      type: FileType.custom,
      allowedExtensions: ['json'],
    );

    if (fileToLoad == null || fileToLoad.files.isEmpty) {
      return '';
    }

    return File(fileToLoad.files.first.path!).readAsString();
  }
}

class _ChatBuilderWidgetState extends State<ChatBuilderWidget>
    with _ChatSessionMixin, AutomaticKeepAliveClientMixin {
  @override
  late ChatSession session;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    session = context.read<ST2DocumentStore2>().chatBuilder;
  }

  @override
  Widget build(BuildContext context) => _Layout(
        llmSelectionChoices: LLMStatusWidget(),
        restartButton: _RestartButton(
          onRestart: () {
            setState(() {
              session.clear();
            });
          },
        ),
        loadChatButton: _LoadChatButton(
          onLoad: () async {
            final conv = await _pickConversationToLoad();
            setState(() {
              session.loadChat(conv);
            });
          },
        ),
        fillupCharButton: IconButton(
          icon: const Icon(Icons.format_align_left),
          tooltip: "Fill up the character",
          onPressed: () async {
            await session.fillupCharacter();
            setState(() {});
          },
        ),
        saveChatButton: _SaveChatButton(session: session),
        messageList: _MessageList(scrollController: _scrollController, chat: chat),
        inputBox: _InputBox(onMessageSent: (text) async {
          final ret = await session.getNextReply(text);
          if (ret == null) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('No response from AI, check AI connection or please try again later'),
              ),
            );
            return;
          }

          setState(() {});

          // Schedule a callback for end of frame
          WidgetsBinding.instance.addPostFrameCallback((_) {
            // Scroll to the bottom of the ListView
            _scrollController.animateTo(
              _scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOut,
            );
          });
        }),
      );
}

class ChatRunnerView extends StatefulWidget {
  final ChatSession session;

  const ChatRunnerView({super.key, required this.session});

  @override
  State<ChatRunnerView> createState() => _ChatRunnerViewState();
}

class _ChatRunnerViewState extends State<ChatRunnerView>
    with _ChatSessionMixin, AutomaticKeepAliveClientMixin {
  @override
  late ChatSession session;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    session = widget.session;
  }

  @override
  Widget build(BuildContext context) => _Layout(
        llmSelectionChoices: LLMStatusWidget(),
        restartButton: _RestartButton(
          onRestart: () {
            setState(() {
              session.clear();
            });
          },
        ),
        loadChatButton: _LoadChatButton(
          onLoad: () async {
            final conv = await _pickConversationToLoad();
            setState(() {
              session.loadChat(conv);
            });
          },
        ),
        saveChatButton: _SaveChatButton(session: session),
        messageList: _MessageList(scrollController: _scrollController, chat: chat),
        inputBox: _InputBox(onMessageSent: (text) async {
          final ret = await session.getNextReply(text);
          if (ret == null) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('No response from AI, check AI connection or please try again later'),
              ),
            );
            return;
          }
          // Schedule a callback for end of frame
          WidgetsBinding.instance.addPostFrameCallback((_) {
            // Scroll to the bottom of the ListView
            _scrollController.animateTo(
              _scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOut,
            );
          });
        }),
      );
}

class _Layout extends StatelessWidget {
  final Widget? llmSelectionChoices;
  final Widget restartButton;
  final Widget loadChatButton;
  final Widget saveChatButton;
  final Widget? fillupCharButton;
  final Widget messageList;
  final Widget inputBox;

  const _Layout({
    required this.llmSelectionChoices,
    required this.restartButton,
    required this.loadChatButton,
    required this.saveChatButton,
    required this.messageList,
    required this.inputBox,
    this.fillupCharButton,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: llmSelectionChoices,
          actions: [
            restartButton,
            if (fillupCharButton != null) fillupCharButton!,
            loadChatButton,
            saveChatButton,
          ],
        ),
        body: Column(
          children: [
            messageList,
            inputBox,
            const SizedBox(
              width: 80,
              height: 5,
            ),
          ],
        ),
      );
}

class LLMStatusWidget extends StatelessWidget {
  const LLMStatusWidget({super.key});

  @override
  Widget build(BuildContext context) => Observer(
        builder: (_) => TextButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, '/settings');
          },
          icon: const Icon(Icons.settings),
          label: Text(context.read<EditorStore>().aiConnectionStatus),
        ),
      );
}

class _InputBox extends StatelessWidget {
  final ValueChanged? onMessageSent;

  const _InputBox({required this.onMessageSent});

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: InputBox(
          onMessageSent: onMessageSent,
        ),
      );
}

class _MessageList extends StatelessWidget {
  final ScrollController scrollController;
  final Chat chat;

  const _MessageList({required this.scrollController, required this.chat});

  @override
  Widget build(BuildContext context) => Expanded(
        child: Observer(
          builder: (_) {
            return ListView.builder(
              controller: scrollController,
              itemCount: chat.messages.length,
              itemBuilder: (context, index) {
                return MessageItemView(message: chat.messages[index]);
              },
            );
          },
        ),
      );
}

class _LoadChatButton extends StatelessWidget {
  final VoidCallback? onLoad;

  const _LoadChatButton({required this.onLoad});

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: onLoad,
        tooltip: "Load conversation (json format)",
        icon: const Icon(Icons.upload),
      );
}

class _SaveChatButton extends StatelessWidget {
  final ChatSession session;
  const _SaveChatButton({required this.session});

  _pickFileToSave(content) async {
    final fileToSave = await FilePicker.platform.saveFile(
      dialogTitle: 'Save chat session',
      type: FileType.custom,
      allowedExtensions: ['json'],
    );

    if (fileToSave == null) return;

    await File(fileToSave).writeAsString(content);
  }

  @override
  Widget build(BuildContext context) => IconButton(
        icon: const Icon(Icons.download),
        tooltip: "Save conversation (json format)",
        onPressed: () async {
          final ret = session.chat.toJson();
          await _pickFileToSave(ret);
        },
      );
}

class _RestartButton extends StatelessWidget {
  final VoidCallback? onRestart;

  const _RestartButton({required this.onRestart});

  @override
  Widget build(BuildContext context) => IconButton(
      onPressed: onRestart,
      tooltip: "Clear & restart a new conversation",
      icon: const Icon(Icons.refresh));
}
