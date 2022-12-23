import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoesmela/util/colors.dart';
import 'package:shoesmela/util/dimension.dart';
import 'package:shoesmela/view/wishlist/wishlist_single_item.dart';
import 'package:shoesmela/widgets/big_text.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // alignment: Alignment.topCenter,
        children: [
          _bottomBackground(context),
          Positioned(
            top: Dimension.height10 * 15,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                  left: Dimension.width10, right: Dimension.width10),
              child: WishlistSingleItem(),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            padding:
                EdgeInsets.only(top: Dimension.height50 + Dimension.height15),
            child: BigText(
              text: 'WISHLIST',
              fontWeight: FontWeight.bold,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottomBackground(context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        color: Colors.white,
        height: 550,
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              width: Dimension.width10 * 14,
              height: Dimension.height100 * 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimension.radius10 * 10),
                ),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    AppClours.buttonBackground1,
                    AppClours.buttonBackground2,
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: Dimension.width10 * 14,
              height: Dimension.height100 * 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimension.radius10 * 10),
                ),
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    AppClours.buttonBackground1,
                    AppClours.buttonBackground2,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
