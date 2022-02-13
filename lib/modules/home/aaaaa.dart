// PageView(
//         controller: _pageController,
//         children: [
//           const OnePage(),
//           Container(color: Colors.blue),
//           Container(color: Colors.yellow),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: indexBottomNavigationBar,
//         onTap: (int page) {
//           setState(() {
//             indexBottomNavigationBar = page;
//           });
//           _pageController.animateToPage(
//             page,
//             duration: Duration(milliseconds: 300),
//             curve: Curves.ease,
//           );
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.ac_unit),
//             label: "ze",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.ac_unit),
//             label: "joao",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.ac_unit),
//             label: "homer",
//           ),
//         ],
//       ),