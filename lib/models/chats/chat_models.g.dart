// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatListModelImpl _$$ChatListModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatListModelImpl(
      chatListId: json['chatListId'] as String,
      userIds:
          (json['userIds'] as List<dynamic>).map((e) => e as String).toList(),
      chatList: (json['chatList'] as List<dynamic>)
          .map((e) => ChatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatListModelImplToJson(_$ChatListModelImpl instance) =>
    <String, dynamic>{
      'chatListId': instance.chatListId,
      'userIds': instance.userIds,
      'chatList': instance.chatList,
    };

_$ChatModelImpl _$$ChatModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatModelImpl(
      id: json['id'] as String,
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
      'id': instance.id,
      'recepientId': instance.recepientId,
      'recepientUsername': instance.recepientUsername,
      'senderId': instance.senderId,
      'senderUsername': instance.senderUsername,
      'mode': instance.mode,
      'status': instance.status,
      'message': instance.message,
      'dateCreated': instance.dateCreated,
    };
