// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Chat on ChatBase, Store {
  late final _$messagesAtom = Atom(name: 'ChatBase.messages', context: context);

  @override
  ObservableList<DialogMessage> get messages {
    _$messagesAtom.reportRead();
    return super.messages;
  }

  @override
  set messages(ObservableList<DialogMessage> value) {
    _$messagesAtom.reportWrite(value, super.messages, () {
      super.messages = value;
    });
  }

  late final _$ChatBaseActionController =
      ActionController(name: 'ChatBase', context: context);

  @override
  dynamic addMessage(DialogMessage message) {
    final _$actionInfo =
        _$ChatBaseActionController.startAction(name: 'ChatBase.addMessage');
    try {
      return super.addMessage(message);
    } finally {
      _$ChatBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo =
        _$ChatBaseActionController.startAction(name: 'ChatBase.clear');
    try {
      return super.clear();
    } finally {
      _$ChatBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetMessages(List<DialogMessage> messages) {
    final _$actionInfo =
        _$ChatBaseActionController.startAction(name: 'ChatBase.resetMessages');
    try {
      return super.resetMessages(messages);
    } finally {
      _$ChatBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
messages: ${messages}
    ''';
  }
}
