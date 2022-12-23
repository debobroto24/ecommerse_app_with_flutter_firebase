import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shoesmela/util/colors.dart';
import 'package:shoesmela/util/dimension.dart';
import 'package:shoesmela/widgets/small_text.dart';

class ColorSelect extends StatefulWidget {
  ColorSelect({super.key});

  @override
  State<ColorSelect> createState() => _ColorSelectState();
}

class _ColorSelectState extends State<ColorSelect> {
  List<Color> colors = [
    Color.fromRGBO(34, 50, 99, 100),
    Color.fromRGBO(143, 0, 255, 100),
    Color.fromRGBO(251, 113, 129, 100),
    Color.fromRGBO(144, 152, 177, 100),
    Color.fromRGBO(44, 41, 41, 100),
  ];
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 80,
      padding:
          EdgeInsets.only(left: Dimension.width20, right: Dimension.width20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SmallText(
            text: 'select color',
            fontWeight: FontWeight.bold,
            size: Dimension.font12,
            textColor: AppClours.fontColor1,
          ),
          SizedBox(height: Dimension.height15),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: colors.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: Dimension.width15),
                      width: Dimension.width10 * 4,
                      height: Dimension.height10 * 4,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colors[index],
                        border: Border.all(
                          width: 1,
                          color: selectedIndex == index
                              ? Colors.black
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
