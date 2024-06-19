import 'package:text_lite/models/friends/friend_model.dart';

abstract class FriendsRepository {
  Future<void> insertFriend(FriendModel friendModel);
  Future<FriendModel?> getFriend(String username);
  Future<void> updateConnectionId(
      {required String username, required String connectionId});
}
