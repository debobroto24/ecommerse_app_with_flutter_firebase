// import 'package:flutter/material.dart';
// import 'package:shoesmela/util/colors.dart';

// class CustomBottomNavigationBar extends StatelessWidget {
//   VoidCallback(int sel) onItemTapped;
//   int selectedIndex;
//   CustomBottomNavigationBar(
//       {super.key, required this.onItemTapped, required this.selectedIndex});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 339,
//       height: 53,
//       margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(50),
//         boxShadow: [
//           BoxShadow(
//             offset: Offset(0, 1),
//             blurRadius: 5,
//             spreadRadius: 4,
//             color: Colors.black.withOpacity(.1),
//           )
//         ],
//       ),
//       child: BottomNavigationBar(
//         backgroundColor: Colors.transparent,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         elevation: 0,
//         iconSize: 20,
//         selectedItemColor: AppClours.buttonBackground2,
//         unselectedItemColor: Color.fromARGB(255, 188, 188, 188),
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.favorite_border_outlined), label: ''),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home_work_outlined), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.shop_outlined), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
//         ],
//         type: BottomNavigationBarType.fixed,
//         currentIndex: selectedIndex,
//         onTap: onItemTapped,
//       ),
//     );
//   }
// }
