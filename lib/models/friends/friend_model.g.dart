// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FriendModelImpl _$$FriendModelImplFromJson(Map<String, dynamic> json) =>
    _$FriendModelImpl(
      userId: json['userId'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      connectionId: json['connectionId'] as String,
      lastWebsocketUpdate: json['lastWebsocketUpdate'] as String,
    );

Map<String, dynamic> _$$FriendModelImplToJson(_$FriendModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'email': instance.email,
      'connectionId': instance.connectionId,
      'lastWebsocketUpdate': instance.lastWebsocketUpdate,
    };
