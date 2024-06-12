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
  final TextEditingController _messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    var viewModel = Provider.of<ChatViewModel>(context, listen: false);
    viewModel.getAppConfig(widget.username);
  }

  @override
  Widget build(BuildContext context) {
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
                Text(value.recepientConnectionId ?? ''),
                if (value.recepientConnectionId != null) ...[
                  ElevatedButton(
                    onPressed: () async => value.sendMessage(
                      connectionId: value.recepientConnectionId!,
                      message: _messageController.text,
                    ),
                    child: const Text('Send message'),
                  ),
                ],
                Text(value.userId ?? ''),
                StreamBuilder(
                  stream: value.channel?.stream,
                  builder: (context, snapshot) {
                    var result = jsonDecode(snapshot.data);
                    if (result['type'] == 'connectionIdUpdate') {
                      print(result['connectionId']);
                      value.recepientConnectionId = result['connectionId'];
                    }
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
}
