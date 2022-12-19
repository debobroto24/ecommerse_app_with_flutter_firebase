import 'package:flutter/material.dart';

class AppClours {}

class ConvertColor {
  // final String colorString;
  // ConvertColor({required this.colorString});
  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
