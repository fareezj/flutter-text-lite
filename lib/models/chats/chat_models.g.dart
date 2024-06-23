// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatListModelImpl _$$ChatListModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatListModelImpl(
      chatListId: json['chatListId'] as String,
      recepientId: json['recepientId'] as String,
      recepientUsername: json['recepientUsername'] as String,
      senderId: json['senderId'] as String,
      senderUsername: json['senderUsername'] as String,
    );

Map<String, dynamic> _$$ChatListModelImplToJson(_$ChatListModelImpl instance) =>
    <String, dynamic>{
      'chatListId': instance.chatListId,
      'recepientId': instance.recepientId,
      'recepientUsername': instance.recepientUsername,
      'senderId': instance.senderId,
      'senderUsername': instance.senderUsername,
    };

_$ChatModelImpl _$$ChatModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatModelImpl(
      chatId: json['chatId'] as String,
      chatListId: json['chatListId'] as String,
      recepientId: json['recepientId'] as String,
      recepientUsername: json['recepientUsername'] as String,
      senderId: json['senderId'] as String,
      senderUsername: json['senderUsername'] as String,
      mode: json['mode'] as String,
      status: json['status'] as String,
      message: json['message'] as String,
      dateCreated: json['dateCreated'] as String,
    );

Map<String, dynamic> _$$ChatModelImplToJson(_$ChatModelImpl instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'chatListId': instance.chatListId,
      'recepientId': instance.recepientId,
      'recepientUsername': instance.recepientUsername,
      'senderId': instance.senderId,
      'senderUsername': instance.senderUsername,
      'mode': instance.mode,
      'status': instance.status,
      'message': instance.message,
      'dateCreated': instance.dateCreated,
    };
