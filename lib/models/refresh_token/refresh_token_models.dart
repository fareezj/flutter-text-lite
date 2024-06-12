import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_models.freezed.dart';
part 'refresh_token_models.g.dart';

@freezed
class RefreshTokenModel with _$RefreshTokenModel {
  const factory RefreshTokenModel({required String refreshToken}) =
      _RefreshTokenModel;

  factory RefreshTokenModel.fromJson(Map<String, Object?> json) =>
      _$RefreshTokenModelFromJson(json);
}

@freezed
class RefreshTokenResModel with _$RefreshTokenResModel {
  const factory RefreshTokenResModel({
    required int statusCode,
    required String message,
    required String idToken,
    required String accessToken,
  }) = _RefreshTokenResModel;

  factory RefreshTokenResModel.fromJson(Map<String, Object?> json) =>
      _$RefreshTokenResModelFromJson(json);
}
