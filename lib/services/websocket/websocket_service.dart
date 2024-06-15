import 'package:web_socket_channel/web_socket_channel.dart';
import 'dart:async';

class WebSocketService {
  static final WebSocketService _instance = WebSocketService._internal();
  WebSocketChannel? _channel;
  final StreamController _streamController = StreamController.broadcast();
  bool _isConnected = false;

  factory WebSocketService() {
    return _instance;
  }

  WebSocketService._internal();

  Future<void> initWebSocket(String userId) async {
    if (_isConnected) return;

    _channel = WebSocketChannel.connect(Uri.parse(
        'wss://1mh9nr345k.execute-api.us-west-2.amazonaws.com/production/?userId=$userId'));
    await _channel?.ready;
    _isConnected = true;
    _listenForMessages();
  }

  void _listenForMessages() {
    _channel?.stream.listen((message) {
      if (!_streamController.isClosed) {
        _streamController.add(message);
      }
    }, onDone: () {
      _isConnected = false;
      if (!_streamController.isClosed) {
        _streamController.close();
      }
    }, onError: (error) {
      _isConnected = false;
      if (!_streamController.isClosed) {
        _streamController.addError(error);
      }
    });
  }

  Stream get stream => _streamController.stream;

  void sendMessage({required String connectionId, required String message}) {
    if (_channel?.sink != null) {
      print(
          'Sending: {"action": "sendPrivate", "recepientConnectionId": "$connectionId", "message": "$message" }');
      _channel?.sink.add(
          '{"action": "sendPrivate", "recepientConnectionId": "$connectionId", "message": "$message" }');
    }
  }

  // void dispose() {
  //   _isConnected = false;
  //   _channel?.sink.close();
  //   if (!_streamController.isClosed) {
  //     _streamController.close();
  //   }
  // }
}
