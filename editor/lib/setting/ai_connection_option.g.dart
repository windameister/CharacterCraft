// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_connection_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoneImpl _$$NoneImplFromJson(Map<String, dynamic> json) => _$NoneImpl(
      $type: json['serviceType'] as String?,
    );

Map<String, dynamic> _$$NoneImplToJson(_$NoneImpl instance) =>
    <String, dynamic>{
      'serviceType': instance.$type,
    };

_$OpenAiImpl _$$OpenAiImplFromJson(Map<String, dynamic> json) => _$OpenAiImpl(
      apiKey: json['apiKey'] as String,
      organizationId: json['organizationId'] as String?,
      baseUrl: json['baseUrl'] as String? ?? "https://api.openai.com/v1",
      $type: json['serviceType'] as String?,
    );

Map<String, dynamic> _$$OpenAiImplToJson(_$OpenAiImpl instance) =>
    <String, dynamic>{
      'apiKey': instance.apiKey,
      'organizationId': instance.organizationId,
      'baseUrl': instance.baseUrl,
      'serviceType': instance.$type,
    };
