import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:built_collection/built_collection.dart';

part 'dialog_message.freezed.dart';
part 'dialog_message.g.dart';

@freezed
class DialogMessage with _$DialogMessage {
  const DialogMessage._();

  const factory DialogMessage({
    required String message,
    required String role,
  }) = _DialogMessage;

  const factory DialogMessage.waiting({
    required String message,
    required String role,
  }) = _DialogMessageWaiting;

  factory DialogMessage.system({
    required String message,
  }) =>
      DialogMessage(message: message, role: SYSTEM);

  factory DialogMessage.user({
    required String message,
  }) =>
      DialogMessage(message: message, role: USER);

  factory DialogMessage.assistant({
    required String message,
  }) =>
      DialogMessage(message: message, role: ASSISTANT);

  factory DialogMessage.fromJson(Map<String, dynamic> json) => _$DialogMessageFromJson(json);

  String get message => message;

  bool get isUserMessage => role == USER;

  static const String NARRATOR = "narrator";
  static const String USER = "user";
  static const String ASSISTANT = "assistant";
  static const String SYSTEM = "system";
}

@freezed
class MessageHistory with _$MessageHistory {
  const MessageHistory._();

  const factory MessageHistory({
    required List<DialogMessage> messages,
  }) = _MessageHistory;

  factory MessageHistory.fromJson(Map<String, dynamic> json) => _$MessageHistoryFromJson(json);
}
