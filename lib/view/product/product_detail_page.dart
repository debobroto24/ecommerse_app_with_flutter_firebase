import 'package:flutter/material.dart';
import 'package:shoesmela/util/colors.dart';
import 'package:shoesmela/util/dimension.dart';
import 'package:shoesmela/view/product/color_select.dart';
import 'package:shoesmela/view/product/product_image_pageview.dart';
import 'package:shoesmela/view/product/size_select.dart';
import 'package:shoesmela/widgets/big_text.dart';
import 'package:shoesmela/widgets/small_text.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // margin: EdgeInsets.only(top: Dimension.height30),
                width: Dimension.pageViewWidth,
                height: Dimension.pageViewHeight,
                decoration: BoxDecoration(
                  // color: AppClours.secondaryBackground,
                  color: Colors.greenAccent,
                  // color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                        Dimension.radius30 + Dimension.radius10),
                    bottomRight: Radius.circular(
                        Dimension.radius30 + Dimension.radius10),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: Dimension.height50),
                    // heaader
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.only(
                        left: Dimension.height20,
                        right: Dimension.width20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.back_hand_outlined),
                          Container(
                            width: Dimension.iconSize46,
                            height: Dimension.iconSize46,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  Dimension.radius20 + Dimension.radius10 / 2),
                            ),
                            child: Icon(
                              Icons.favorite_rounded,
                              color: AppClours.buttonBackground1,
                              size: Dimension.iconSize20 + Dimension.iconSize10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: Dimension.height15),
                    // pageview
                    ProductImagePageView(),
                  ],
                ),
              ),
              // //end of page view
              // name and price
              Container(
                width: Dimension.screenWidth,
                margin: EdgeInsets.only(
                    left: Dimension.width15, right: Dimension.width15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(
                      text: 'name of this product',
                      fontWeight: FontWeight.bold,
                      size: Dimension.font16,
                      textColor: AppClours.fontColor1,
                    ),
                    SmallText(
                      text: '232',
                      fontWeight: FontWeight.bold,
                      size: Dimension.font26,
                      textColor: AppClours.fontColor2,
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimension.height20),

              ColorSelect(),
              SizedBox(height: Dimension.height20),
              SizeSelect(),
              SizedBox(height: Dimension.height20),
              SmallText(
                text: 'Specification',
                fontWeight: FontWeight.bold,
                size: Dimension.font12,
                textColor: AppClours.fontColor1,
              ),
              SizedBox(height: Dimension.height10),
              SmallText(
                text:
                    'this is our new product. This shoe designed to use regular this is our new product. This shoe designed to use regular',
                textColor: AppClours.fontBlack,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
