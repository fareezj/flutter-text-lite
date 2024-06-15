import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_lite/db/app_database.dart';
import 'package:text_lite/db/dao/app_config_dao.dart';
import 'package:text_lite/features/auth/sign_in_screen.dart';
import 'package:text_lite/features/auth/auth_view_model.dart';
import 'package:text_lite/features/chat/chat_view_model.dart';
import 'package:text_lite/features/home/home_screen.dart';
import 'package:text_lite/features/home/home_view_model.dart';
import 'package:text_lite/main_view_model.dart';
import 'package:text_lite/repositories/app_config_repository.dart';
import 'package:text_lite/repositories/auth_repository.dart';
import 'package:text_lite/repositories/home_repository.dart';
import 'package:text_lite/repositories/impl/app_config_respository_impl.dart';
import 'package:text_lite/repositories/impl/auth_repository_impl.dart';
import 'package:text_lite/repositories/impl/home_repository_impl.dart';
import 'package:text_lite/router/router_generator.dart';
import 'package:text_lite/services/rest/rest_service.dart';
import 'package:text_lite/services/websocket/websocket_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppDatabase.instance.getDb();
  await RestService.instance.initDio();
  runApp(MultiProvider(
    providers: [
      Provider<AppDatabase>(create: (context) => AppDatabase.instance),
      Provider<RestService>(create: (context) => RestService.instance),
      Provider<AppConfigRepository>(
        create: (context) => AppConfigRepositoryImpl(
          appConfigDao: AppConfigDao(AppDatabase.instance),
        ),
      ),
      Provider<AuthRepository>(
          create: (context) =>
              AuthRepositoryImpl(restService: RestService.instance)),
      Provider<HomeRepository>(
          create: (context) =>
              HomeRepositoryImpl(restService: RestService.instance)),
      ChangeNotifierProvider(
        create: (context) => MainViewModel(
          authRepository: AuthRepositoryImpl(restService: RestService.instance),
          appConfigRepository: AppConfigRepositoryImpl(
            appConfigDao: AppConfigDao(AppDatabase.instance),
          ),
        ),
      ),
      ChangeNotifierProvider(
        create: (context) => AuthViewModel(
          authRepository: AuthRepositoryImpl(restService: RestService.instance),
          appConfigRepository: AppConfigRepositoryImpl(
            appConfigDao: AppConfigDao(AppDatabase.instance),
          ),
        ),
      ),
      ChangeNotifierProvider(
        create: (context) => HomeViewModel(
          homeRepository: HomeRepositoryImpl(restService: RestService.instance),
        ),
      ),
      ChangeNotifierProvider(
        create: (context) => ChatViewModel(
          homeRepository: HomeRepositoryImpl(restService: RestService.instance),
          appConfigRepository: AppConfigRepositoryImpl(
            appConfigDao: AppConfigDao(AppDatabase.instance),
          ),
        ),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Provider.of<MainViewModel>(context, listen: false).checkLoginStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MainViewModel>(
      builder: (context, value, child) {
        print(value.isLoggedIn);
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          onGenerateRoute: RouterGenerator.generateRoute,
          home: value.isLoggedIn ? const HomeScreen() : const SignInScreen(),
        );
      },
    );
  }
}
