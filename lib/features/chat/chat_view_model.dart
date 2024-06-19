import 'package:flutter/material.dart';
import 'package:text_lite/models/app_config/app_config_model.dart';
import 'package:text_lite/models/friends/friend_model.dart';
import 'package:text_lite/models/sign_in/sign_in_models.dart';
import 'package:text_lite/repositories/app_config_repository.dart';
import 'package:text_lite/repositories/friends_repository.dart';
import 'package:text_lite/repositories/home_repository.dart';
import 'package:text_lite/services/sharedPrefs/shared_prefs_service.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ChatViewModel extends ChangeNotifier {
  final AppConfigRepository appConfigRepository;
  final HomeRepository homeRepository;
  final SharedPrefsService sharedPrefsService;
  final FriendsRepository friendsRepository;
  WebSocketChannel? channel;

  ChatViewModel({
    required this.appConfigRepository,
    required this.homeRepository,
    required this.sharedPrefsService,
    required this.friendsRepository,
  });

  String? userId;
  String? recepientConnectionId;

  Future<void> getAppConfig(String recepientUsername) async {
    try {
      channel = null;
      AppConfigModel? result = await appConfigRepository.getAppConfig();
      userId = result?.userId;
      notifyListeners();
      if (userId != null) {
        await initWebSocket(userId!, recepientUsername);
      }
    } catch (e) {
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
      await friendsRepository.insertFriend(
        FriendModel(
          userId: user.id,
          username: user.username,
          email: user.email,
          connectionId: user.connectionId!,
          lastWebsocketUpdate: DateTime.now().toString(),
        ),
      );
    } else {
      print('Getting User Details from Local DB');
      recepientConnectionId = friendModel.connectionId;
      notifyListeners();
    }
  }

  void sendMessage({required String connectionId, required String message}) {
    print(
        'Sending: {"action": "sendPrivate", "recepientConnectionId": "$connectionId", "message": "$message" }');
    channel?.sink.add(
        '{"action": "sendPrivate", "recepientConnectionId": "$connectionId", "message": "$message" }');
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
}
