import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_models.freezed.dart';
part 'chat_models.g.dart';

@freezed
class ChatListModel with _$ChatListModel {
  const factory ChatListModel({
    required String chatListId,
    required String recepientId,
    required String recepientUsername,
    required String senderId,
    required String senderUsername,
  }) = _ChatListModel;

  factory ChatListModel.fromJson(Map<String, Object?> json) =>
      _$ChatListModelFromJson(json);
}

@unfreezed
class ChatModel with _$ChatModel {
  factory ChatModel({
    required String chatId,
    required String chatListId,
    required String recepientId,
    required String recepientUsername,
    required String senderId,
    required String senderUsername,
    required String mode,
    required String status,
    required String message,
    required String dateCreated,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, Object?> json) =>
      _$ChatModelFromJson(json);
}
