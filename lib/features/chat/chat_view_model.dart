import 'package:flutter/material.dart';
import 'package:text_lite/models/app_config/app_config_model.dart';
import 'package:text_lite/models/sign_in/sign_in_models.dart';
import 'package:text_lite/repositories/app_config_repository.dart';
import 'package:text_lite/repositories/home_repository.dart';

class ChatViewModel extends ChangeNotifier {
  final AppConfigRepository appConfigRepository;
  final HomeRepository homeRepository;

  ChatViewModel(
      {required this.appConfigRepository, required this.homeRepository});

  String? userId;
  String? recepientConnectionId;

  Future<void> getAppConfig() async {
    try {
      AppConfigModel result = await appConfigRepository.getAppConfig();
      userId = result.userId;
      notifyListeners();
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
}
