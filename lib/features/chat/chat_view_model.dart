import 'package:flutter/material.dart';
import 'package:text_lite/models/app_config/app_config_model.dart';
import 'package:text_lite/models/sign_in/sign_in_models.dart';
import 'package:text_lite/repositories/app_config_repository.dart';
import 'package:text_lite/repositories/home_repository.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ChatViewModel extends ChangeNotifier {
  final AppConfigRepository appConfigRepository;
  final HomeRepository homeRepository;
  WebSocketChannel? channel;

  ChatViewModel(
      {required this.appConfigRepository, required this.homeRepository});

  String? userId;
  String? recepientConnectionId;

  Future<void> getAppConfig(String recepientUsername) async {
    try {
      AppConfigModel result = await appConfigRepository.getAppConfig();
      userId = result.userId;
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
    await getUserDetails(UserDetailsReqBody(username: recepientUsername));
  }

  void sendMessage({required String connectionId, required String message}) {
    print(
        'Sending: {"action": "sendPrivate", "recepientConnectionId": "$connectionId", "message": "$message" }');
    channel?.sink.add(
        '{"action": "sendPrivate", "recepientConnectionId": "$connectionId", "message": "$message" }');
  }
}
