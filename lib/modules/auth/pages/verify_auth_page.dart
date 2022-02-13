import 'package:flutter/material.dart';
import 'package:riot_mobile/core/core.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
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
            "Verification Required",
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
            "Enter the code we've emailed to\nexam**@****.com.",
            style: TextStyle(
              color: const Color(0xFF5A5A5A),
              fontSize: MediaQuery.of(context).size.width / 18,
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
                25,
              ),
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/loading_home_page', (route) => true);
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
            "RESEND CODE",
            style: TextStyle(
              color: Color(0x86080808),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "NO LONGER HAVE ACCESS TO THAT EMAIL?",
            style: TextStyle(
              color: Color(0x86080808),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    ));
  }
}
