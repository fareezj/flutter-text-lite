import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_lite/features/chat/chat_view_model.dart';
import 'package:text_lite/features/home/home_view_model.dart';
import 'package:text_lite/models/sign_in/sign_in_models.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:http/http.dart' as http;

class ChatScreen extends StatefulWidget {
  final String username; // Username of receipient

  const ChatScreen({super.key, required this.username});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  ChatViewModel? chatViewModel;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    chatViewModel = Provider.of<ChatViewModel>(context, listen: false);
    chatViewModel?.getAppConfig(widget.username);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<ChatViewModel>(
          builder: (context, value, child) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Form(
                    child: TextFormField(
                      controller: _messageController,
                      decoration: const InputDecoration(labelText: 'Message'),
                    ),
                  ),
                  Text(value.recepientConnectionId ?? ''),
                  ElevatedButton(
                    onPressed: () async => value.sendMessage(
                      connectionId: value.recepientConnectionId!,
                      message: _messageController.text,
                    ),
                    child: const Text('Send message'),
                  ),
                  Text(value.userId ?? ''),
                  StreamBuilder(
                    stream: value.channel?.stream,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        var result = jsonDecode(snapshot.data);
                        if (result['type'] == 'connectionIdUpdate') {
                          value.recepientConnectionId = result['connectionId'];
                          value.updateFriendConnectionId(
                            username: widget.username,
                            connectionId: result['connectionId'],
                          );
                        }
                        return Text(snapshot.hasData ? snapshot.data : '');
                      } else {
                        return const SizedBox();
                      }
                    },
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
