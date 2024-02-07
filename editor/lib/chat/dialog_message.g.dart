// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DialogMessageImpl _$$DialogMessageImplFromJson(Map<String, dynamic> json) =>
    _$DialogMessageImpl(
      message: json['message'] as String,
      role: json['role'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DialogMessageImplToJson(_$DialogMessageImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'role': instance.role,
      'runtimeType': instance.$type,
    };

_$DialogMessageWaitingImpl _$$DialogMessageWaitingImplFromJson(
        Map<String, dynamic> json) =>
    _$DialogMessageWaitingImpl(
      message: json['message'] as String,
      role: json['role'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DialogMessageWaitingImplToJson(
        _$DialogMessageWaitingImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'role': instance.role,
      'runtimeType': instance.$type,
    };

_$MessageHistoryImpl _$$MessageHistoryImplFromJson(Map<String, dynamic> json) =>
    _$MessageHistoryImpl(
      messages: (json['messages'] as List<dynamic>)
          .map((e) => DialogMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MessageHistoryImplToJson(
        _$MessageHistoryImpl instance) =>
    <String, dynamic>{
      'messages': instance.messages,
    };
