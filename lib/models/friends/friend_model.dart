import 'package:freezed_annotation/freezed_annotation.dart';
part 'friend_model.freezed.dart';
part 'friend_model.g.dart';

@unfreezed
class FriendModel with _$FriendModel {
  factory FriendModel({
    required String userId,
    required String username,
    required String email,
    required String connectionId,
    required String lastWebsocketUpdate,
  }) = _FriendModel;

  factory FriendModel.fromJson(Map<String, Object?> json) =>
      _$FriendModelFromJson(json);
}
