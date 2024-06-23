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
    chatViewModel?.retrieveChat(recepientUsername: widget.username);
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
                  if (value.chatListId != null) ...[
                    Text('Chat List Id: ${value.chatListId}'),
                    ElevatedButton(
                      onPressed: () async => value.sendMessage(
                          connectionId: value.recepientConnectionId!,
                          message: _messageController.text,
                          chatListId: value.chatListId!,
                          recepientId: value.friendRecepientModel!.userId,
                          recepientUsername:
                              value.friendRecepientModel!.username,
                          senderId: value.senderUserId!,
                          senderUsername: value.senderUsername!,
                          mode: "SENDER",
                          status: "SENT"),
                      child: const Text('Send message'),
                    ),
                  ],

                  // ElevatedButton(
                  //     onPressed: () => value.retrieveChat(
                  //         recepientUsername: widget.username),
                  //     child: const Text('Test retrieve')),
                  Text(value.senderUserId ?? ''),
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
                  ),
                  if (value.retrievedChatList != null) ...[
                    Column(
                      children: value.retrievedChatList!.map((val) {
                        return Text(val.message);
                      }).toList(),
                    )
                  ]
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
