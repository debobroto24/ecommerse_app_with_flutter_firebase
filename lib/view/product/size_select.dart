import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shoesmela/util/colors.dart';
import 'package:shoesmela/util/dimension.dart';
import 'package:shoesmela/widgets/small_text.dart';

class SizeSelect extends StatefulWidget {
  SizeSelect({super.key});

  @override
  State<SizeSelect> createState() => _SizeSelectState();
}

class _SizeSelectState extends State<SizeSelect> {
  List<double> sizes = [
    5,
    4,
    7.4,
    8,
    9,
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
            text: 'select size',
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
                itemCount: sizes.length,
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
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(
                          width: 1,
                          color: selectedIndex == index
                              ? Colors.black
                              : Colors.transparent,
                        ),
                      ),
                      child: SmallText(
                        text: '${sizes[index]}',
                        textColor: AppClours.fontColor1,
                        size: 14,
                        fontWeight: FontWeight.bold,
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
