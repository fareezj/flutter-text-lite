import 'package:text_lite/db/dao/friend_dao.dart';
import 'package:text_lite/models/friends/friend_model.dart';
import 'package:text_lite/repositories/friends_repository.dart';

class FriendsRepositoryImpl implements FriendsRepository {
  final FriendDao friendDao;

  FriendsRepositoryImpl(this.friendDao);

  @override
  Future<FriendModel?> getFriend(String username) async {
    try {
      var result = await friendDao.getFriend(username);
      return result;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> insertFriend(FriendModel friendModel) async {
    try {
      await friendDao.insertFriend(friendModel);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> updateConnectionId(
      {required String username, required String connectionId}) async {
    try {
      await friendDao.updateConnectionId(
          connectionId: connectionId, username: username);
    } catch (e) {
      throw Exception(e);
    }
  }
}
