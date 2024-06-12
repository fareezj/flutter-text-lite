import 'package:flutter/material.dart';
import 'package:text_lite/models/sign_in/sign_in_models.dart';
import 'package:text_lite/repositories/home_repository.dart';

class HomeViewModel extends ChangeNotifier {
  final HomeRepository homeRepository;

  HomeViewModel({required this.homeRepository});

  UserDetails? userDetailsResult;

  Future<UserDetails> getUserDetails(UserDetailsReqBody reqBody) async {
    try {
      UserDetails result = await homeRepository.getUserDetails(reqBody);
      userDetailsResult = result;
      notifyListeners();
      return result;
    } catch (e) {
      throw Exception(e);
    }
  }
}
