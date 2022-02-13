import 'package:flutter/material.dart';
import 'package:riot_mobile/core/core.dart';

class AuthRiotAccountPage extends StatefulWidget {
  const AuthRiotAccountPage({Key? key}) : super(key: key);

  @override
  State<AuthRiotAccountPage> createState() => _AuthRiotAccountPageState();
}

class _AuthRiotAccountPageState extends State<AuthRiotAccountPage> {
  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final focusUsername = FocusNode();
  final focusPassword = FocusNode();

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // void initState() {
  //   usernameController.addListener();
  //   passwordController.clear();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          false, //isso para de quebrar o textfield na hora de abrir
      body: Container(
        color: const Color(0xFFffffff),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 100,
                ),
                Center(
                  child: SizedBox(
                    child: Image.asset(AppImages.riotLogo),
                    height: MediaQuery.of(context).size.height / 6,
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamedAndRemoveUntil("/auth", (route) => true);
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.black87,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            Text(
              "Sign In",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 14,
                fontWeight: FontWeight.w800,
                wordSpacing: 5,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350,
              child: TextField(
                controller: usernameController,
                focusNode: focusUsername,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  label: Text(
                    'USERNAME',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                onChanged: (value) {},
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350,
              child: TextField(
                controller: passwordController,
                focusNode: focusPassword,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  label: Text(
                    'PASSWORD',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                onChanged: (value) {},
                obscureText: true,
              ),
            ),
            const Spacer(),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black26,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/verify', (route) => true);
                },
                icon: const Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.black26,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "CAN' T SIGN IN?",
              style: TextStyle(
                color: Color(0x86080808),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "CREATE ACCOUNT",
              style: TextStyle(
                color: Color(0x86080808),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
