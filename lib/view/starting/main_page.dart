import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoesmela/util/colors.dart';
import 'package:shoesmela/util/dimension.dart';
import 'package:shoesmela/view/home/home_page.dart';
import 'package:shoesmela/view/home/tabs/store.dart';
import 'package:shoesmela/view/wishlist/wishlist_page.dart';
import 'package:shoesmela/widgets/custom_appbar.dart';
import 'package:shoesmela/widgets/custom_bottomnavigatonbar.dart';
import 'package:shoesmela/widgets/small_text.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    HomePage(),
    WishlistPage(),
    Center(child: Text('working home')),
    Center(child: Text('cart')),
    Center(child: Text('account')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar: _CustomBottomNavigationBar(context),
    );
  }

  Widget _CustomBottomNavigationBar(context) {
    return Container(
      width: Dimension.bottomNavigationWidth,
      height: Dimension.bottomNavigationHeight,
      margin: EdgeInsets.only(
          bottom: Dimension.height20,
          left: Dimension.width20,
          right: Dimension.width20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimension.radius10 * 5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 5,
            spreadRadius: 4,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        iconSize: Dimension.iconSize15,
        selectedItemColor: AppClours.buttonBackground2,
        unselectedItemColor: Color.fromARGB(255, 188, 188, 188),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_work_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shop_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

// BottomNavigationBar(
//             showSelectedLabels: false,
//             showUnselectedLabels: false,
//             elevation: 0,
//             iconSize: 28,
//             selectedItemColor: AppClours.buttonBackground2,
//             unselectedItemColor: Color.fromARGB(255, 188, 188, 188),
//             items: const [
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.home_outlined), label: ''),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.favorite_border_outlined), label: ''),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.home_work_outlined), label: ''),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.shop_outlined), label: ''),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.person_outline), label: ''),
//             ],
//           ),
