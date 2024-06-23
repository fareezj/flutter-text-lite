import 'package:text_lite/models/chats/chat_models.dart';

abstract class ChatRepository {
  Future<void> addNewChatList(ChatListModel chatListModel);
  Future<void> addChat(ChatModel chatModel);
  Future<ChatListModel?> getChatList(String recepientUsername);
  Future<List<ChatModel>?> getChats(String chatListId);
}
