import 'package:flutter/material.dart';
import 'package:riot_mobile/modules/auth/auth_page.dart';

import 'modules/auth/auth_with_riot.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riot Mobile',
      debugShowCheckedModeBanner: false,
      initialRoute: '/auth',
      routes: {
        '/auth': (route) => const AuthPage(),
        '/auth_with_riot_account': (route) => const AuthRiotAccountPage(),
      },
    );
  }
}
