import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_lite/features/chat/chat_view_model.dart';
import 'package:text_lite/features/home/home_view_model.dart';
import 'package:text_lite/models/sign_in/sign_in_models.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:http/http.dart' as http;

class ChatScreen extends StatefulWidget {
  final String username;

  const ChatScreen({super.key, required this.username});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _connectionController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  WebSocketChannel? channel;

  void initWebsocket(String userConn) async {
    channel = WebSocketChannel.connect(Uri.parse(
        'wss://1mh9nr345k.execute-api.us-west-2.amazonaws.com/production/?userId=$userConn'));
    await channel?.ready;
  }

  void _sendMessage(
      {required String connectionId, required String message}) async {
    print(
        'Sending: {"action": "sendPrivate", "recepientConnectionId": "$connectionId", "message": "$message" }');
    channel?.sink.add(
        '{"action": "sendPrivate", "recepientConnectionId": "$connectionId", "message": "$message" }');
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<ChatViewModel>(context);
    viewModel.getAppConfig();
    return Scaffold(
      body: SafeArea(
        child: Consumer<ChatViewModel>(
          builder: (context, value, child) {
            return Column(
              children: [
                Form(
                  child: TextFormField(
                    controller: _messageController,
                    decoration: const InputDecoration(labelText: 'Message'),
                  ),
                ),
                if (value.userId != null) ...[
                  ElevatedButton(
                    onPressed: () async => initWebsocket(value.userId!),
                    child: const Text('Init websocket'),
                  ),
                ],
                ElevatedButton(
                  onPressed: () async => viewModel.getUserDetails(
                      UserDetailsReqBody(username: widget.username)),
                  child: const Text('Get Connection id'),
                ),
                if (value.recepientConnectionId != null) ...[
                  ElevatedButton(
                    onPressed: () async => _sendMessage(
                      connectionId: value.recepientConnectionId!,
                      message: _messageController.text,
                    ),
                    child: const Text('Send message'),
                  ),
                ],
                Text(value.userId ?? ''),
                StreamBuilder(
                  stream: channel?.stream,
                  builder: (context, snapshot) {
                    return Text(snapshot.hasData ? snapshot.data : '');
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }

  Future<void> getUserDetails(String username) async {
    // Define the URL
    final url = Uri.parse(
        'https://dfrzbwjbf6.execute-api.us-west-2.amazonaws.com/dev/main/get-user-details');

    final Map<String, dynamic> requestBody = {'username': username};

    // Send the GET request
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(requestBody),
    );

    // Check if the request was successful
    if (response.statusCode == 200) {
      // Parse the JSON response
      final responseData = json.decode(response.body);
      print('Response data: $responseData');
    } else {
      // Handle the error
      print('Request failed with status: ${response.statusCode}');
    }
  }
}
