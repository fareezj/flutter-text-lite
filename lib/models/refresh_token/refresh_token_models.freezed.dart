// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RefreshTokenModel _$RefreshTokenModelFromJson(Map<String, dynamic> json) {
  return _RefreshTokenModel.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenModel {
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshTokenModelCopyWith<RefreshTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenModelCopyWith<$Res> {
  factory $RefreshTokenModelCopyWith(
          RefreshTokenModel value, $Res Function(RefreshTokenModel) then) =
      _$RefreshTokenModelCopyWithImpl<$Res, RefreshTokenModel>;
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class _$RefreshTokenModelCopyWithImpl<$Res, $Val extends RefreshTokenModel>
    implements $RefreshTokenModelCopyWith<$Res> {
  _$RefreshTokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshTokenModelImplCopyWith<$Res>
    implements $RefreshTokenModelCopyWith<$Res> {
  factory _$$RefreshTokenModelImplCopyWith(_$RefreshTokenModelImpl value,
          $Res Function(_$RefreshTokenModelImpl) then) =
      __$$RefreshTokenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class __$$RefreshTokenModelImplCopyWithImpl<$Res>
    extends _$RefreshTokenModelCopyWithImpl<$Res, _$RefreshTokenModelImpl>
    implements _$$RefreshTokenModelImplCopyWith<$Res> {
  __$$RefreshTokenModelImplCopyWithImpl(_$RefreshTokenModelImpl _value,
      $Res Function(_$RefreshTokenModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_$RefreshTokenModelImpl(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshTokenModelImpl implements _RefreshTokenModel {
  const _$RefreshTokenModelImpl({required this.refreshToken});

  factory _$RefreshTokenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshTokenModelImplFromJson(json);

  @override
  final String refreshToken;

  @override
  String toString() {
    return 'RefreshTokenModel(refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenModelImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenModelImplCopyWith<_$RefreshTokenModelImpl> get copyWith =>
      __$$RefreshTokenModelImplCopyWithImpl<_$RefreshTokenModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshTokenModelImplToJson(
      this,
    );
  }
}

abstract class _RefreshTokenModel implements RefreshTokenModel {
  const factory _RefreshTokenModel({required final String refreshToken}) =
      _$RefreshTokenModelImpl;

  factory _RefreshTokenModel.fromJson(Map<String, dynamic> json) =
      _$RefreshTokenModelImpl.fromJson;

  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$RefreshTokenModelImplCopyWith<_$RefreshTokenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefreshTokenResModel _$RefreshTokenResModelFromJson(Map<String, dynamic> json) {
  return _RefreshTokenResModel.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenResModel {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get idToken => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshTokenResModelCopyWith<RefreshTokenResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenResModelCopyWith<$Res> {
  factory $RefreshTokenResModelCopyWith(RefreshTokenResModel value,
          $Res Function(RefreshTokenResModel) then) =
      _$RefreshTokenResModelCopyWithImpl<$Res, RefreshTokenResModel>;
  @useResult
  $Res call(
      {int statusCode, String message, String idToken, String accessToken});
}

/// @nodoc
class _$RefreshTokenResModelCopyWithImpl<$Res,
        $Val extends RefreshTokenResModel>
    implements $RefreshTokenResModelCopyWith<$Res> {
  _$RefreshTokenResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? idToken = null,
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshTokenResModelImplCopyWith<$Res>
    implements $RefreshTokenResModelCopyWith<$Res> {
  factory _$$RefreshTokenResModelImplCopyWith(_$RefreshTokenResModelImpl value,
          $Res Function(_$RefreshTokenResModelImpl) then) =
      __$$RefreshTokenResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int statusCode, String message, String idToken, String accessToken});
}

/// @nodoc
class __$$RefreshTokenResModelImplCopyWithImpl<$Res>
    extends _$RefreshTokenResModelCopyWithImpl<$Res, _$RefreshTokenResModelImpl>
    implements _$$RefreshTokenResModelImplCopyWith<$Res> {
  __$$RefreshTokenResModelImplCopyWithImpl(_$RefreshTokenResModelImpl _value,
      $Res Function(_$RefreshTokenResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? idToken = null,
    Object? accessToken = null,
  }) {
    return _then(_$RefreshTokenResModelImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshTokenResModelImpl implements _RefreshTokenResModel {
  const _$RefreshTokenResModelImpl(
      {required this.statusCode,
      required this.message,
      required this.idToken,
      required this.accessToken});

  factory _$RefreshTokenResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshTokenResModelImplFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;
  @override
  final String idToken;
  @override
  final String accessToken;

  @override
  String toString() {
    return 'RefreshTokenResModel(statusCode: $statusCode, message: $message, idToken: $idToken, accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenResModelImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, statusCode, message, idToken, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenResModelImplCopyWith<_$RefreshTokenResModelImpl>
      get copyWith =>
          __$$RefreshTokenResModelImplCopyWithImpl<_$RefreshTokenResModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshTokenResModelImplToJson(
      this,
    );
  }
}

abstract class _RefreshTokenResModel implements RefreshTokenResModel {
  const factory _RefreshTokenResModel(
      {required final int statusCode,
      required final String message,
      required final String idToken,
      required final String accessToken}) = _$RefreshTokenResModelImpl;

  factory _RefreshTokenResModel.fromJson(Map<String, dynamic> json) =
      _$RefreshTokenResModelImpl.fromJson;

  @override
  int get statusCode;
  @override
  String get message;
  @override
  String get idToken;
  @override
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$RefreshTokenResModelImplCopyWith<_$RefreshTokenResModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
