// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatListModel _$ChatListModelFromJson(Map<String, dynamic> json) {
  return _ChatListModel.fromJson(json);
}

/// @nodoc
mixin _$ChatListModel {
  String get chatListId => throw _privateConstructorUsedError;
  String get recepientId => throw _privateConstructorUsedError;
  String get recepientUsername => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get senderUsername => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatListModelCopyWith<ChatListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatListModelCopyWith<$Res> {
  factory $ChatListModelCopyWith(
          ChatListModel value, $Res Function(ChatListModel) then) =
      _$ChatListModelCopyWithImpl<$Res, ChatListModel>;
  @useResult
  $Res call(
      {String chatListId,
      String recepientId,
      String recepientUsername,
      String senderId,
      String senderUsername});
}

/// @nodoc
class _$ChatListModelCopyWithImpl<$Res, $Val extends ChatListModel>
    implements $ChatListModelCopyWith<$Res> {
  _$ChatListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatListId = null,
    Object? recepientId = null,
    Object? recepientUsername = null,
    Object? senderId = null,
    Object? senderUsername = null,
  }) {
    return _then(_value.copyWith(
      chatListId: null == chatListId
          ? _value.chatListId
          : chatListId // ignore: cast_nullable_to_non_nullable
              as String,
      recepientId: null == recepientId
          ? _value.recepientId
          : recepientId // ignore: cast_nullable_to_non_nullable
              as String,
      recepientUsername: null == recepientUsername
          ? _value.recepientUsername
          : recepientUsername // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      senderUsername: null == senderUsername
          ? _value.senderUsername
          : senderUsername // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatListModelImplCopyWith<$Res>
    implements $ChatListModelCopyWith<$Res> {
  factory _$$ChatListModelImplCopyWith(
          _$ChatListModelImpl value, $Res Function(_$ChatListModelImpl) then) =
      __$$ChatListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String chatListId,
      String recepientId,
      String recepientUsername,
      String senderId,
      String senderUsername});
}

/// @nodoc
class __$$ChatListModelImplCopyWithImpl<$Res>
    extends _$ChatListModelCopyWithImpl<$Res, _$ChatListModelImpl>
    implements _$$ChatListModelImplCopyWith<$Res> {
  __$$ChatListModelImplCopyWithImpl(
      _$ChatListModelImpl _value, $Res Function(_$ChatListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatListId = null,
    Object? recepientId = null,
    Object? recepientUsername = null,
    Object? senderId = null,
    Object? senderUsername = null,
  }) {
    return _then(_$ChatListModelImpl(
      chatListId: null == chatListId
          ? _value.chatListId
          : chatListId // ignore: cast_nullable_to_non_nullable
              as String,
      recepientId: null == recepientId
          ? _value.recepientId
          : recepientId // ignore: cast_nullable_to_non_nullable
              as String,
      recepientUsername: null == recepientUsername
          ? _value.recepientUsername
          : recepientUsername // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      senderUsername: null == senderUsername
          ? _value.senderUsername
          : senderUsername // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatListModelImpl implements _ChatListModel {
  const _$ChatListModelImpl(
      {required this.chatListId,
      required this.recepientId,
      required this.recepientUsername,
      required this.senderId,
      required this.senderUsername});

  factory _$ChatListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatListModelImplFromJson(json);

  @override
  final String chatListId;
  @override
  final String recepientId;
  @override
  final String recepientUsername;
  @override
  final String senderId;
  @override
  final String senderUsername;

  @override
  String toString() {
    return 'ChatListModel(chatListId: $chatListId, recepientId: $recepientId, recepientUsername: $recepientUsername, senderId: $senderId, senderUsername: $senderUsername)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatListModelImpl &&
            (identical(other.chatListId, chatListId) ||
                other.chatListId == chatListId) &&
            (identical(other.recepientId, recepientId) ||
                other.recepientId == recepientId) &&
            (identical(other.recepientUsername, recepientUsername) ||
                other.recepientUsername == recepientUsername) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.senderUsername, senderUsername) ||
                other.senderUsername == senderUsername));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chatListId, recepientId,
      recepientUsername, senderId, senderUsername);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatListModelImplCopyWith<_$ChatListModelImpl> get copyWith =>
      __$$ChatListModelImplCopyWithImpl<_$ChatListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatListModelImplToJson(
      this,
    );
  }
}

abstract class _ChatListModel implements ChatListModel {
  const factory _ChatListModel(
      {required final String chatListId,
      required final String recepientId,
      required final String recepientUsername,
      required final String senderId,
      required final String senderUsername}) = _$ChatListModelImpl;

  factory _ChatListModel.fromJson(Map<String, dynamic> json) =
      _$ChatListModelImpl.fromJson;

  @override
  String get chatListId;
  @override
  String get recepientId;
  @override
  String get recepientUsername;
  @override
  String get senderId;
  @override
  String get senderUsername;
  @override
  @JsonKey(ignore: true)
  _$$ChatListModelImplCopyWith<_$ChatListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
mixin _$ChatModel {
  String get chatId => throw _privateConstructorUsedError;
  set chatId(String value) => throw _privateConstructorUsedError;
  String get chatListId => throw _privateConstructorUsedError;
  set chatListId(String value) => throw _privateConstructorUsedError;
  String get recepientId => throw _privateConstructorUsedError;
  set recepientId(String value) => throw _privateConstructorUsedError;
  String get recepientUsername => throw _privateConstructorUsedError;
  set recepientUsername(String value) => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  set senderId(String value) => throw _privateConstructorUsedError;
  String get senderUsername => throw _privateConstructorUsedError;
  set senderUsername(String value) => throw _privateConstructorUsedError;
  String get mode => throw _privateConstructorUsedError;
  set mode(String value) => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  set status(String value) => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  set message(String value) => throw _privateConstructorUsedError;
  String get dateCreated => throw _privateConstructorUsedError;
  set dateCreated(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
  @useResult
  $Res call(
      {String chatId,
      String chatListId,
      String recepientId,
      String recepientUsername,
      String senderId,
      String senderUsername,
      String mode,
      String status,
      String message,
      String dateCreated});
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? chatListId = null,
    Object? recepientId = null,
    Object? recepientUsername = null,
    Object? senderId = null,
    Object? senderUsername = null,
    Object? mode = null,
    Object? status = null,
    Object? message = null,
    Object? dateCreated = null,
  }) {
    return _then(_value.copyWith(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      chatListId: null == chatListId
          ? _value.chatListId
          : chatListId // ignore: cast_nullable_to_non_nullable
              as String,
      recepientId: null == recepientId
          ? _value.recepientId
          : recepientId // ignore: cast_nullable_to_non_nullable
              as String,
      recepientUsername: null == recepientUsername
          ? _value.recepientUsername
          : recepientUsername // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      senderUsername: null == senderUsername
          ? _value.senderUsername
          : senderUsername // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatModelImplCopyWith<$Res>
    implements $ChatModelCopyWith<$Res> {
  factory _$$ChatModelImplCopyWith(
          _$ChatModelImpl value, $Res Function(_$ChatModelImpl) then) =
      __$$ChatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String chatId,
      String chatListId,
      String recepientId,
      String recepientUsername,
      String senderId,
      String senderUsername,
      String mode,
      String status,
      String message,
      String dateCreated});
}

/// @nodoc
class __$$ChatModelImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ChatModelImpl>
    implements _$$ChatModelImplCopyWith<$Res> {
  __$$ChatModelImplCopyWithImpl(
      _$ChatModelImpl _value, $Res Function(_$ChatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? chatListId = null,
    Object? recepientId = null,
    Object? recepientUsername = null,
    Object? senderId = null,
    Object? senderUsername = null,
    Object? mode = null,
    Object? status = null,
    Object? message = null,
    Object? dateCreated = null,
  }) {
    return _then(_$ChatModelImpl(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      chatListId: null == chatListId
          ? _value.chatListId
          : chatListId // ignore: cast_nullable_to_non_nullable
              as String,
      recepientId: null == recepientId
          ? _value.recepientId
          : recepientId // ignore: cast_nullable_to_non_nullable
              as String,
      recepientUsername: null == recepientUsername
          ? _value.recepientUsername
          : recepientUsername // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      senderUsername: null == senderUsername
          ? _value.senderUsername
          : senderUsername // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatModelImpl implements _ChatModel {
  _$ChatModelImpl(
      {required this.chatId,
      required this.chatListId,
      required this.recepientId,
      required this.recepientUsername,
      required this.senderId,
      required this.senderUsername,
      required this.mode,
      required this.status,
      required this.message,
      required this.dateCreated});

  factory _$ChatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatModelImplFromJson(json);

  @override
  String chatId;
  @override
  String chatListId;
  @override
  String recepientId;
  @override
  String recepientUsername;
  @override
  String senderId;
  @override
  String senderUsername;
  @override
  String mode;
  @override
  String status;
  @override
  String message;
  @override
  String dateCreated;

  @override
  String toString() {
    return 'ChatModel(chatId: $chatId, chatListId: $chatListId, recepientId: $recepientId, recepientUsername: $recepientUsername, senderId: $senderId, senderUsername: $senderUsername, mode: $mode, status: $status, message: $message, dateCreated: $dateCreated)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      __$$ChatModelImplCopyWithImpl<_$ChatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatModelImplToJson(
      this,
    );
  }
}

abstract class _ChatModel implements ChatModel {
  factory _ChatModel(
      {required String chatId,
      required String chatListId,
      required String recepientId,
      required String recepientUsername,
      required String senderId,
      required String senderUsername,
      required String mode,
      required String status,
      required String message,
      required String dateCreated}) = _$ChatModelImpl;

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$ChatModelImpl.fromJson;

  @override
  String get chatId;
  set chatId(String value);
  @override
  String get chatListId;
  set chatListId(String value);
  @override
  String get recepientId;
  set recepientId(String value);
  @override
  String get recepientUsername;
  set recepientUsername(String value);
  @override
  String get senderId;
  set senderId(String value);
  @override
  String get senderUsername;
  set senderUsername(String value);
  @override
  String get mode;
  set mode(String value);
  @override
  String get status;
  set status(String value);
  @override
  String get message;
  set message(String value);
  @override
  String get dateCreated;
  set dateCreated(String value);
  @override
  @JsonKey(ignore: true)
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
