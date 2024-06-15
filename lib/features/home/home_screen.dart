import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_lite/features/home/home_view_model.dart';
import 'package:text_lite/models/sign_in/sign_in_models.dart';
import 'package:text_lite/repositories/home_repository.dart';
import 'package:text_lite/router/router_generator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();
  UserDetails? userDetails;

  Future<UserDetails> getUserDetails(
      UserDetailsReqBody reqBody, BuildContext context) async {
    var homeRepository = Provider.of<HomeRepository>(context, listen: false);
    try {
      UserDetails result = await homeRepository.getUserDetails(reqBody);
      setState(() => userDetails = result);
      return result;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<HomeViewModel>(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SearchBar(
                      controller: searchController,
                    ),
                  ),
                  IconButton(
                    onPressed: () => getUserDetails(
                        UserDetailsReqBody(username: searchController.text),
                        context),
                    icon: const Icon(Icons.search),
                  )
                ],
              ),
              if (userDetails != null) ...[
                Row(
                  children: [
                    Text(userDetails!.username),
                    IconButton(
                      onPressed: () => Navigator.pushNamed(
                        context,
                        '/chat',
                        arguments: ChatScreenArguments(
                            username: userDetails!.username),
                      ).then((value) => print('hellloooooooo')),
                      icon: const Icon(Icons.chat),
                    ),
                    IconButton(
                      onPressed: () => Navigator.pushNamed(
                        context,
                        '/settings',
                      ).then((value) => print('hellloooooooo')),
                      icon: const Icon(Icons.chair),
                    ),
                  ],
                )
              ]
              // Consumer<HomeViewModel>(
              //   builder: (context, value, child) {
              //     var user = value.userDetailsResult;
              //     if (user != null) {
              //       return Row(
              //         children: [
              //           Text(user.username),
              //           IconButton(
              //             onPressed: () => Navigator.pushNamed(
              //               context,
              //               '/chat',
              //               arguments:
              //                   ChatScreenArguments(username: user.username),
              //             ),
              //             icon: const Icon(Icons.chat),
              //           ),
              //         ],
              //       );
              //     } else {
              //       return const SizedBox();
              //     }
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchController.dispose();
  }
}
