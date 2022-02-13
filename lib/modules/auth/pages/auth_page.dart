import 'package:flutter/material.dart';
import 'package:riot_mobile/core/shared/shared.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFffffff),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(AppImages.riotLogo),
              height: MediaQuery.of(context).size.height / 6,
            ),
            Text(
              "Welcome to Riot Mobile",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 14,
                fontWeight: FontWeight.w800,
                wordSpacing: 5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Text(
              "Sign into the account you wish to\ncontinue with.",
              style: TextStyle(
                color: const Color(0xFF5A5A5A),
                fontSize: MediaQuery.of(context).size.width / 18,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      '/loading_auth_page',
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      AppImages.riotIcon,
                      height: 70,
                      width: 70,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    AppImages.facebookIcon,
                    height: 70,
                    width: 70,
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black12)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      AppImages.googleIcon,
                      height: 70,
                      width: 70,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    AppImages.appleIcon,
                    height: 70,
                    width: 70,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
            )
          ],
        ),
      ),
    );
  }
}
