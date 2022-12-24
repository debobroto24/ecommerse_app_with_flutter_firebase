import 'package:flutter/material.dart';
import 'package:shoesmela/util/dimension.dart';
import 'package:shoesmela/widgets/small_text.dart';

class CustomListTile extends StatelessWidget {
  SmallText text;
  SmallText price;
  double height;
  CustomListTile({
    super.key,
    required this.text,
    required this.price,
    this.height = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text,
          price,
        ],
      ),
    );
  }
}
