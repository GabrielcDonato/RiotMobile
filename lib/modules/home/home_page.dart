import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false, // remove appbar back arrow
          title: const Text(
            "News Feed",
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexBottomNavigationBar,
          onTap: (index) => setState(() => indexBottomNavigationBar = index),
          selectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.backup_table),
                label: "News",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              label: "Esports",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.messenger),
              label: "Social",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_sharp),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
