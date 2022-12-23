import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double size;
  final FontWeight fontWeight;
  const SmallText(
      {super.key,
      required this.text,
      this.textColor = Colors.black,
      this.size = 16,
      this.fontWeight = FontWeight.w400});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
