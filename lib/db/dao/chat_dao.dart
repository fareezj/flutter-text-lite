import 'package:text_lite/db/app_database.dart';
import 'package:text_lite/models/chats/chat_models.dart';

class ChatDao {
  final AppDatabase appDatabase;

  ChatDao(this.appDatabase);

  Future<void> addNewChatList(ChatListModel chatListModel) async {
    try {
      print('ADD NEW CHAT LIST DAO');
      await appDatabase.db!.insert('ChatList', chatListModel.toJson());
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> addChat(ChatModel chatModel) async {
    try {
      print('Adding chat in dao');
      await appDatabase.db!
          .insert('Chats', chatModel.toJson())
          .then((v) => print(v));
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<ChatListModel?> getChatList(String recepientUsername) async {
    try {
      List<Map<String, Object?>> result = await appDatabase.db!.rawQuery(
          'SELECT * FROM ChatList WHERE recepientUsername = ?',
          [recepientUsername]);

      print('RESULT DAO $result');

      if (result.isNotEmpty) {
        return ChatListModel.fromJson(result.first);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<ChatModel>?> getChats(String chatListId) async {
    try {
      List<Map<String, Object?>> result = await appDatabase.db!
          .rawQuery('SELECT * FROM Chats WHERE chatListId = ?', [chatListId]);

      print('RESULT RETRIEVE CHAT DAO $result');

      if (result.isNotEmpty) {
        return result.map((json) => ChatModel.fromJson(json)).toList();
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }
}
