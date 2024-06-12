import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_config_model.freezed.dart';
part 'app_config_model.g.dart';

@unfreezed
class AppConfigModel with _$AppConfigModel {
  factory AppConfigModel({
    required String userId,
    required String username,
    required String email,
    required String idToken,
    required String refreshToken,
    required int isLoggedIn,
  }) = _AppConfigModel;

  factory AppConfigModel.fromJson(Map<String, Object?> json) =>
      _$AppConfigModelFromJson(json);
}
