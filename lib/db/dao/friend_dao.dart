import 'package:text_lite/db/app_database.dart';
import 'package:text_lite/models/friends/friend_model.dart';

class FriendDao {
  final AppDatabase appDatabase;

  FriendDao(this.appDatabase);

  Future<void> insertFriend(FriendModel friendModel) async {
    try {
      await appDatabase.db!.insert('Friends', friendModel.toJson());
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<FriendModel?> getFriend(String username) async {
    try {
      List<Map<String, Object?>> result = await appDatabase.db!
          .rawQuery('SELECT * FROM Friends WHERE username = ?', [username]);

      if (result.isNotEmpty) {
        return FriendModel.fromJson(result.first);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> updateConnectionId(
      {required String connectionId, required String username}) async {
    try {
      await appDatabase.db!.update('Friends', {"connectionId": connectionId},
          where: 'username = ?', whereArgs: [username]);
    } catch (e) {
      throw Exception(e);
    }
  }
}
