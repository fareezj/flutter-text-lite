// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppConfigModel _$AppConfigModelFromJson(Map<String, dynamic> json) {
  return _AppConfigModel.fromJson(json);
}

/// @nodoc
mixin _$AppConfigModel {
  String get userId => throw _privateConstructorUsedError;
  set userId(String value) => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  set username(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  String get idToken => throw _privateConstructorUsedError;
  set idToken(String value) => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  set refreshToken(String value) => throw _privateConstructorUsedError;
  int get isLoggedIn => throw _privateConstructorUsedError;
  set isLoggedIn(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppConfigModelCopyWith<AppConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigModelCopyWith<$Res> {
  factory $AppConfigModelCopyWith(
          AppConfigModel value, $Res Function(AppConfigModel) then) =
      _$AppConfigModelCopyWithImpl<$Res, AppConfigModel>;
  @useResult
  $Res call(
      {String userId,
      String username,
      String email,
      String idToken,
      String refreshToken,
      int isLoggedIn});
}

/// @nodoc
class _$AppConfigModelCopyWithImpl<$Res, $Val extends AppConfigModel>
    implements $AppConfigModelCopyWith<$Res> {
  _$AppConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? email = null,
    Object? idToken = null,
    Object? refreshToken = null,
    Object? isLoggedIn = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppConfigModelImplCopyWith<$Res>
    implements $AppConfigModelCopyWith<$Res> {
  factory _$$AppConfigModelImplCopyWith(_$AppConfigModelImpl value,
          $Res Function(_$AppConfigModelImpl) then) =
      __$$AppConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String username,
      String email,
      String idToken,
      String refreshToken,
      int isLoggedIn});
}

/// @nodoc
class __$$AppConfigModelImplCopyWithImpl<$Res>
    extends _$AppConfigModelCopyWithImpl<$Res, _$AppConfigModelImpl>
    implements _$$AppConfigModelImplCopyWith<$Res> {
  __$$AppConfigModelImplCopyWithImpl(
      _$AppConfigModelImpl _value, $Res Function(_$AppConfigModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? email = null,
    Object? idToken = null,
    Object? refreshToken = null,
    Object? isLoggedIn = null,
  }) {
    return _then(_$AppConfigModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppConfigModelImpl implements _AppConfigModel {
  _$AppConfigModelImpl(
      {required this.userId,
      required this.username,
      required this.email,
      required this.idToken,
      required this.refreshToken,
      required this.isLoggedIn});

  factory _$AppConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppConfigModelImplFromJson(json);

  @override
  String userId;
  @override
  String username;
  @override
  String email;
  @override
  String idToken;
  @override
  String refreshToken;
  @override
  int isLoggedIn;

  @override
  String toString() {
    return 'AppConfigModel(userId: $userId, username: $username, email: $email, idToken: $idToken, refreshToken: $refreshToken, isLoggedIn: $isLoggedIn)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppConfigModelImplCopyWith<_$AppConfigModelImpl> get copyWith =>
      __$$AppConfigModelImplCopyWithImpl<_$AppConfigModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppConfigModelImplToJson(
      this,
    );
  }
}

abstract class _AppConfigModel implements AppConfigModel {
  factory _AppConfigModel(
      {required String userId,
      required String username,
      required String email,
      required String idToken,
      required String refreshToken,
      required int isLoggedIn}) = _$AppConfigModelImpl;

  factory _AppConfigModel.fromJson(Map<String, dynamic> json) =
      _$AppConfigModelImpl.fromJson;

  @override
  String get userId;
  set userId(String value);
  @override
  String get username;
  set username(String value);
  @override
  String get email;
  set email(String value);
  @override
  String get idToken;
  set idToken(String value);
  @override
  String get refreshToken;
  set refreshToken(String value);
  @override
  int get isLoggedIn;
  set isLoggedIn(int value);
  @override
  @JsonKey(ignore: true)
  _$$AppConfigModelImplCopyWith<_$AppConfigModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
