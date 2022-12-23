import 'package:flutter/material.dart';
import 'package:shoesmela/util/colors.dart';
import 'package:shoesmela/widgets/small_text.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        width: double.maxFinite,
        // color: Colors.red,
        // height: 50,
        padding: EdgeInsets.only(
          top: 10,
          // bottom: 20,
          left: 20,
          right: 20,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.menu_open_outlined, color: Colors.black, size: 25),
            SizedBox(width: 210),
            Container(
              // width: 40,
              // height: 40,
              child: Stack(
                children: [
                  Positioned(
                    child: Icon(Icons.shopping_basket_outlined,
                        color: Colors.black, size: 25),
                  ),
                  Positioned(
                    right: 2,
                    top: 0,
                    child: Container(
                      alignment: Alignment.center,
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                        color: AppClours.buttonBackground1,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: SmallText(
                        text: '3',
                        textColor: Colors.white,
                        fontWeight: FontWeight.bold,
                        size: 9,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 25),
            Icon(Icons.search_off_outlined, color: Colors.black, size: 30),
          ],
        ),
      ),
    );
  }
}
