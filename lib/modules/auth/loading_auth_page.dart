import 'package:flutter/material.dart';

class LoadingAuthPage extends StatefulWidget {
  const LoadingAuthPage({Key? key}) : super(key: key);

  @override
  _LoadingAuthPageState createState() => _LoadingAuthPageState();
}

class _LoadingAuthPageState extends State<LoadingAuthPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then(
      (_) =>
          Navigator.of(context).pushReplacementNamed('/auth_with_riot_account'),
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
