import 'package:get/get.dart';

class Dimension {
  // my mobile screen height and width
  // height:780, width: 360,
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // padding and margin
  // 360/10
  static double width10 = screenWidth / 36;
  static double width15 = screenWidth / 24;
  static double width20 = screenWidth / 18;
  static double width25 = screenWidth / 14.4;
  static double width30 = screenWidth / 12;
  static double width200 = screenWidth / 1.8;
  static double width220 = screenWidth / 1.63;
  static double width339 = screenWidth / 1.06;

  // padding and margin
  // 780/10
  static double height10 = screenHeight / 78;
  static double height15 = screenHeight / 52;
  static double height20 = screenHeight / 39;
  static double height25 = screenHeight / 31.2;
  static double height30 = screenHeight / 26;
  static double height100 = screenHeight / 7.8;
  static double height50 = screenHeight / 15.6;
  static double height53 = screenHeight / 14.71;

  //
  static double width109 = screenWidth / 3.3;
  static double height109 = screenHeight / 7.15;

  static double width141 = screenWidth / 2.55;
  static double height238 = screenHeight / 3.27;

  // iconSize
  static double iconSize10 = screenHeight / 78;
  static double iconSize12 = screenHeight / 65;
  static double iconSize15 = screenHeight / 52;
  static double iconSize20 = screenHeight / 39;
  static double iconSize18 = screenHeight / 43;
  static double iconSize25 = screenHeight / 31.2;
  static double iconSize46 = screenHeight / 16.95;

  // font size
  static double font10 = screenHeight / 78;
  static double font12 = screenHeight / 65;
  static double font15 = screenHeight / 52;
  static double font16 = screenHeight / 48.75;
  static double font20 = screenHeight / 39;
  static double font26 = screenHeight / 30;
  static double font36 = screenHeight / 21.66;

  //  radious
  static double radius10 = screenHeight / 78;
  static double radius15 = screenHeight / 52;
  static double radius20 = screenHeight / 39;
  static double radius30 = screenHeight / 26;

  static double bottomNavigationWidth = screenWidth / 1.06;
  static double bottomNavigationHeight = screenHeight / 14.71;

  // pageview  product screeen
  static double pageViewWidth = screenWidth / 1;
  static double pageViewHeight = screenHeight / 2.16;
  static double pageViewImageWidth = screenWidth / 1.15;
  static double pageViewImageHeight = screenHeight / 3.78;

  // wishList item container
  static double itemContainerWidth = screenWidth / 1.04;
  static double itemContainerHeight = screenHeight / 8.66;
}
