import 'package:flutter/material.dart';
import 'package:shoesmela/util/colors.dart';
import 'package:shoesmela/widgets/big_text.dart';
import 'package:shoesmela/widgets/small_text.dart';

class BigTextButton extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  bool hasBorder;
  bool hasShadow;
  final double backgroundSize;
  final double textSize;
  final FontWeight fontWeight;
  BigTextButton({
    super.key,
    required this.text,
    this.backgroundColor = Colors.blueAccent,
    this.textColor = Colors.white,
    this.hasBorder = true,
    this.hasShadow = false,
    this.backgroundSize = 58,
    this.textSize = 20,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: backgroundSize,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
        // border: Border.all(color: Colors.black, width: .8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 5,
            color: Colors.black12,
            spreadRadius: 4,
          )
        ],
      ),
      child: Center(
        child: SmallText(
          text: text,
          size: textSize,
          textColor: textColor,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
