// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshTokenModelImpl _$$RefreshTokenModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshTokenModelImpl(
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$RefreshTokenModelImplToJson(
        _$RefreshTokenModelImpl instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
    };

_$RefreshTokenResModelImpl _$$RefreshTokenResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshTokenResModelImpl(
      statusCode: (json['statusCode'] as num).toInt(),
      message: json['message'] as String,
      idToken: json['idToken'] as String,
      accessToken: json['accessToken'] as String,
    );

Map<String, dynamic> _$$RefreshTokenResModelImplToJson(
        _$RefreshTokenResModelImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'idToken': instance.idToken,
      'accessToken': instance.accessToken,
    };
