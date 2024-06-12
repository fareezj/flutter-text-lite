import 'package:flutter/material.dart';
import 'package:text_lite/features/auth/sign_in_screen.dart';
import 'package:text_lite/features/auth/sign_up_screen.dart';
import 'package:text_lite/features/chat/chat_screen.dart';
import 'package:text_lite/features/home/home_screen.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/sign-up':
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case '/sign-in':
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case '/chat':
        final args = settings.arguments as ChatScreenArguments;
        return MaterialPageRoute(
            builder: (_) => ChatScreen(username: args.username));
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
      );
    });
  }
}

class ChatScreenArguments {
  final String username;

  ChatScreenArguments({required this.username});
}
