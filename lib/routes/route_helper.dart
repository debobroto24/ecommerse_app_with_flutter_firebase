import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoesmela/view/cart/cart_page.dart';
import 'package:shoesmela/view/home/home_page.dart';
import 'package:shoesmela/view/product/product_detail_page.dart';
import 'package:shoesmela/view/starting/get_start.dart';
import 'package:shoesmela/view/starting/main_page.dart';
import 'package:shoesmela/view/wishlist/wishlist_page.dart';

class RouteHelper {
//  page defined
  static const String initial = '/';
  static const String homepage = '/homepage';
  static const String wishlistpage = '/wishlistpage';
  static const String cartpage = '/cartpage';
  static const String productdetail = '/productdetail';
  static const String getstart = '/getstart';

  //get pages
  static String getInitial() => '${initial}';
  static String getHomePage() => '${homepage}';
  static String getWishlist() => '${wishlistpage}';
  static String getCartPage() => '${cartpage}';
  static String getproductDetailPage() => '${productdetail}';
  static String getGetStartPage() => '${getstart}';

  // return pages
  static List<GetPage> routes = [
    GetPage(name: initial, page: () => MainPage()),
    GetPage(name: homepage, page: () => HomePage()),
    GetPage(name: wishlistpage, page: () => WishlistPage()),
    GetPage(name: cartpage, page: () => CartPage()),
    GetPage(name: productdetail, page: () => ProductDetailPage()),
    GetPage(name: getstart, page: () => GetStart()),
  ];
}
