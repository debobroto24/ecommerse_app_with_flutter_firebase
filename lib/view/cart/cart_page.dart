import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoesmela/routes/route_helper.dart';
import 'package:shoesmela/util/colors.dart';
import 'package:shoesmela/util/dimension.dart';
import 'package:shoesmela/view/wishlist/single_item.dart';
import 'package:shoesmela/widgets/big_text_button.dart';
import 'package:shoesmela/widgets/custom_listtile.dart';
import 'package:shoesmela/widgets/small_text.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: Dimension.width20,
                  bottom: Dimension.height20,
                  right: Dimension.height20),
              width: double.maxFinite,
              // height: Dimension.height100 * 1.5,
              height: Dimension.height50,
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                  // border: Border(
                  //   bottom: BorderSide(
                  //     color: Colors.black26..withOpacity(.7),
                  //     width: 1,
                  //   ),
                  // ),
                  ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteHelper.homepage);
                    },
                    child: Icon(Icons.close, size: Dimension.iconSize18),
                  ),
                  SmallText(
                      text: 'Your Cart',
                      textColor: AppClours.fontColor1,
                      size: Dimension.font26),
                ],
              ),
            ),
            SizedBox(height: Dimension.height20),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                  left: Dimension.width10, right: Dimension.width10),
              child: Column(
                children: [
                  SingleItem(),
                  SizedBox(height: Dimension.height20),
                  SingleItem(),
                  SizedBox(height: Dimension.height20),
                  SingleItem(),
                ],
              ),
            ),
            SizedBox(height: Dimension.height30),
            // item details
            Container(
              width: Dimension.width200 * 1.6,
              height: Dimension.height50 * 3.2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimension.radius30),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 10,
                    spreadRadius: 2,
                    color: Colors.black26..withOpacity(.3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: Dimension.width30,
                  right: Dimension.width30,
                  top: Dimension.height20,
                  bottom: Dimension.height20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomListTile(
                      text: SmallText(
                        text: 'Items',
                        textColor: Colors.black26..withOpacity(.8),
                        size: Dimension.font16,
                      ),
                      price: SmallText(
                        text: '\$8878',
                        textColor: Colors.black26,
                        size: Dimension.font16,
                      ),
                    ),
                    SizedBox(height: Dimension.height10),
                    CustomListTile(
                      text: SmallText(
                        text: 'Shipping',
                        textColor: Colors.black26..withOpacity(.8),
                        size: Dimension.font16,
                      ),
                      price: SmallText(
                        text: '\$78',
                        textColor: Colors.black26,
                        size: Dimension.font16,
                      ),
                    ),
                    SizedBox(height: Dimension.height10),
                    CustomListTile(
                      text: SmallText(
                        text: 'ImportCharges',
                        textColor: Colors.black26..withOpacity(.8),
                        size: Dimension.font16,
                      ),
                      price: SmallText(
                        text: '\$334',
                        textColor: Colors.black26,
                        size: Dimension.font16,
                      ),
                    ),
                    SizedBox(height: Dimension.height10),
                    CustomListTile(
                      text: SmallText(
                        text: 'Total',
                        textColor: Colors.black,
                        size: Dimension.font16,
                      ),
                      price: SmallText(
                        text: '\$998',
                        textColor: AppClours.fontColor2,
                        size: Dimension.font16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: Dimension.height20),
            BigTextButton(
              text: 'Check Out',
              textColor: Colors.white,
              backgroundColor: AppClours.buttonBackground2,
              textSize: Dimension.font15,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
