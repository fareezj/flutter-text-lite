import 'package:text_lite/db/dao/chat_dao.dart';
import 'package:text_lite/models/chats/chat_models.dart';
import 'package:text_lite/repositories/chat_repository.dart';

class ChatRepositoryImpl extends ChatRepository {
  final ChatDao chatDao;

  ChatRepositoryImpl({required this.chatDao});

  @override
  Future<void> addChat(ChatModel chatModel) async {
    try {
      await chatDao.addChat(chatModel);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> addNewChatList(ChatListModel chatListModel) async {
    try {
      print('adding new chat list');
      await chatDao.addNewChatList(chatListModel);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<ChatListModel?> getChatList(String recepientUsername) async {
    try {
      print('getting chat list');

      return await chatDao.getChatList(recepientUsername);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<ChatModel>?> getChats(String chatListId) async {
    try {
      return await chatDao.getChats(chatListId);
    } catch (e) {
      throw Exception(e);
    }
  }
}
