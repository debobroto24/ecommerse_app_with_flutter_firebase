import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoesmela/util/colors.dart';
import 'package:shoesmela/view/auth/sign_up.dart';
import 'package:shoesmela/view/product/product_detail.dart';
import 'package:shoesmela/view/home/tabs/store.dart';
import 'package:shoesmela/view/starting/main_page.dart';
import 'package:shoesmela/view/starting/get_start.dart';
import 'package:shoesmela/view/wishlist/wish_list.dart';
import 'package:shoesmela/widgets/big_text.dart';
import 'package:shoesmela/widgets/big_text_button.dart';
import 'package:shoesmela/widgets/small_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: MainPage(),
      // home: ProductDetails(),
      home: WishList(),
    );
  }
}
