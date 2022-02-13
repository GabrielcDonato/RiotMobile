//Librarys imports:
import 'package:flutter/material.dart';

//Pages imports:
import 'modules/auth/auth.dart';
import 'modules/home/home.dart';
import 'modules/splash/splash.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riot Mobile',
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (route) => const SplashPage(),
        '/loading_auth_page': (route) => const LoadingAuthPage(),
        '/auth': (route) => const AuthPage(),
        '/auth_with_riot_account': (route) => const AuthRiotAccountPage(),
        '/verify': (route) => const VerifyPage(),
        '/loading_home_page': (route) => const LoadingHomePage(),
        '/home': (route) => const HomePage(),
      },
    );
  }
}
