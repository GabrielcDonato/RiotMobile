import 'package:flutter/material.dart';
import 'package:riot_mobile/core/core.dart';

class AuthRiotAccountPage extends StatelessWidget {
  const AuthRiotAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    onPressed: () {},
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
            const Spacer(),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black26,
                ),
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.black26,
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
