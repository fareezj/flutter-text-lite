import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_lite/features/home/home_view_model.dart';
import 'package:text_lite/models/sign_in/sign_in_models.dart';
import 'package:text_lite/router/router_generator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<HomeViewModel>(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SearchBar(
                    controller: searchController,
                  ),
                ),
                GestureDetector(
                  onTap: () => viewModel.getUserDetails(
                      UserDetailsReqBody(username: searchController.text)),
                  child: const Icon(Icons.search),
                )
              ],
            ),
            Expanded(
              child: Consumer<HomeViewModel>(
                builder: (context, value, child) {
                  var user = value.userDetailsResult;
                  if (user != null) {
                    return Row(
                      children: [
                        Expanded(child: Text(user.username)),
                        IconButton(
                            onPressed: () => Navigator.pushNamed(
                                context, '/chat',
                                arguments: ChatScreenArguments(
                                    username: searchController.text)),
                            icon: const Icon(Icons.chat))
                      ],
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
