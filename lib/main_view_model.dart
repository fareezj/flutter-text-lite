import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:text_lite/models/app_config/app_config_model.dart';
import 'package:text_lite/models/refresh_token/refresh_token_models.dart';
import 'package:text_lite/repositories/app_config_repository.dart';
import 'package:text_lite/repositories/auth_repository.dart';

class MainViewModel extends ChangeNotifier {
  final AuthRepository authRepository;
  final AppConfigRepository appConfigRepository;

  MainViewModel(
      {required this.appConfigRepository, required this.authRepository});

  bool isLoggedIn = false;
  var logger = Logger();

  Future<void> checkLoginStatus() async {
    try {
      AppConfigModel userAppConfig = await appConfigRepository.getAppConfig();
      var result = await authRepository.refreshToken(
          RefreshTokenModel(refreshToken: userAppConfig.refreshToken));
      if (result.statusCode == 200) {
        userAppConfig.isLoggedIn = 1;
        isLoggedIn = true;
        notifyListeners();
      }
      logger.i(result);
      userAppConfig.idToken = result.idToken;
      appConfigRepository.insertAppConfig(userAppConfig);
    } catch (e, a) {
      throw Exception(a);
    }
  }

  Future<void> getAppConfig() async {
    try {
      AppConfigModel result = await appConfigRepository.getAppConfig();
      isLoggedIn = result.isLoggedIn == 1;
      notifyListeners();
    } catch (e) {
      throw Exception(e);
    }
  }
}
