import 'package:flutter/material.dart';

class LoadingHomePage extends StatefulWidget {
  const LoadingHomePage({Key? key}) : super(key: key);

  @override
  LoadingHomePageState createState() => LoadingHomePageState();
}

class LoadingHomePageState extends State<LoadingHomePage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then(
      (_) => Navigator.of(context).pushReplacementNamed('/home'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          strokeWidth: 4,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
