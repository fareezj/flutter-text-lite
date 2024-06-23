import 'package:flutter/material.dart';
import 'package:text_lite/models/app_config/app_config_model.dart';
import 'package:text_lite/models/chats/chat_models.dart';
import 'package:text_lite/models/friends/friend_model.dart';
import 'package:text_lite/models/sign_in/sign_in_models.dart';
import 'package:text_lite/repositories/app_config_repository.dart';
import 'package:text_lite/repositories/chat_repository.dart';
import 'package:text_lite/repositories/friends_repository.dart';
import 'package:text_lite/repositories/home_repository.dart';
import 'package:text_lite/services/sharedPrefs/shared_prefs_service.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ChatViewModel extends ChangeNotifier {
  final AppConfigRepository appConfigRepository;
  final HomeRepository homeRepository;
  final SharedPrefsService sharedPrefsService;
  final FriendsRepository friendsRepository;
  final ChatRepository chatRepository;
  WebSocketChannel? channel;

  ChatViewModel({
    required this.appConfigRepository,
    required this.homeRepository,
    required this.sharedPrefsService,
    required this.friendsRepository,
    required this.chatRepository,
  });

  String? senderUserId;
  String? senderUsername;
  String? recepientConnectionId;
  String? chatListId;
  FriendModel? friendRecepientModel;
  List<ChatModel>? retrievedChatList;

  Future<void> getAppConfig(String recepientUsername) async {
    try {
      channel = null;
      AppConfigModel? result = await appConfigRepository.getAppConfig();
      senderUserId = result?.userId;
      senderUsername = result?.username;
      notifyListeners();
      if (senderUserId != null) {
        await initWebSocket(senderUserId!, recepientUsername);
      }
    } catch (e, a) {
      print('exception: $a');
      throw Exception(e);
    }
  }

  Future<UserDetails> getUserDetails(UserDetailsReqBody reqBody) async {
    try {
      print('Getting User Details from API');
      UserDetails result = await homeRepository.getUserDetails(reqBody);
      recepientConnectionId = result.connectionId;
      notifyListeners();
      return result;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> initWebSocket(String userId, String recepientUsername) async {
    channel = WebSocketChannel.connect(Uri.parse(
        'wss://1mh9nr345k.execute-api.us-west-2.amazonaws.com/production/?userId=$userId'));
    await channel?.ready;

    FriendModel? friendModel =
        await friendsRepository.getFriend(recepientUsername);
    if (friendModel == null) {
      UserDetails? user =
          await getUserDetails(UserDetailsReqBody(username: recepientUsername));
      var friendModel = FriendModel(
        userId: user.id,
        username: user.username,
        email: user.email,
        connectionId: user.connectionId ?? '',
        lastWebsocketUpdate: DateTime.now().toString(),
      );
      await friendsRepository.insertFriend(friendModel);
      friendRecepientModel = friendModel;
      notifyListeners();
    } else {
      print('Getting User Details from Local DB');
      recepientConnectionId = friendModel.connectionId;
      friendRecepientModel = friendModel;
      notifyListeners();
    }

    try {
      var uuid = const Uuid();
      ChatListModel? chatList =
          await chatRepository.getChatList(recepientUsername);
      print('RESULT GET CHAT LIST VM $chatList');
      chatListId = chatList?.chatListId;
      notifyListeners();

      if (chatList == null) {
        var id = uuid.v4();
        await chatRepository.addNewChatList(
          ChatListModel(
              chatListId: id,
              recepientId: friendModel!.userId,
              recepientUsername: recepientUsername,
              senderId: senderUserId!,
              senderUsername: senderUsername!),
        );
        chatListId = id;
        notifyListeners();
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  void sendMessage(
      {required String connectionId,
      required String message,
      required String chatListId,
      required String recepientId,
      required String recepientUsername,
      required String senderId,
      required String senderUsername,
      required String mode,
      required String status}) async {
    print(
        'Sending: {"action": "sendPrivate", "recepientConnectionId": "$connectionId", "message": "$message" }');
    channel?.sink.add(
        '{"action": "sendPrivate", "recepientConnectionId": "$connectionId", "message": "$message" }');

    try {
      print('SEND MESSAGE: CHAT LIST ID: $chatListId');
      var uuid = const Uuid();
      chatRepository.addChat(
        ChatModel(
          chatId: uuid.v4().toString(),
          recepientId: recepientId,
          chatListId: chatListId,
          recepientUsername: recepientUsername,
          senderId: senderId,
          senderUsername: senderUsername,
          mode: mode,
          status: status,
          message: message,
          dateCreated: DateTime.now().toString(),
        ),
      );
      retrieveChat(recepientUsername: recepientUsername);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> updateFriendConnectionId(
      {required String username, required String connectionId}) async {
    try {
      await friendsRepository.updateConnectionId(
          username: username, connectionId: connectionId);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<ChatModel>?> retrieveChat(
      {required String recepientUsername}) async {
    try {
      print('RETRIEVING CHAT: $recepientUsername');
      ChatListModel? chatList =
          await chatRepository.getChatList(recepientUsername);
      print('RESULT RETRIEVE CHATLIST $chatList');
      if (chatList != null) {
        List<ChatModel>? result =
            await chatRepository.getChats(chatList.chatListId);
        print('RESULT RETRIEVE CHAT $result');

        retrievedChatList = result;
        notifyListeners();
        print(retrievedChatList);
        return result;
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }
}
