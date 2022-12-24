import 'package:flutter/material.dart';
import 'package:shoesmela/util/colors.dart';
import 'package:shoesmela/util/dimension.dart';
import 'package:shoesmela/widgets/small_text.dart';

class SingleItem extends StatelessWidget {
  const SingleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimension.itemContainerWidth,
      height: Dimension.itemContainerHeight,
      // alignment: Alignment.center,
      // padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimension.radius30),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 10,
            spreadRadius: 2,
            color: Colors.black26..withOpacity(.3),
          )
        ],
      ),
      child: Container(
        padding: EdgeInsets.all(Dimension.width10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius10),
              ),
              width: Dimension.width10 * 6,
              height: Dimension.height10 * 6,
              child: Image.asset('images/product1.png', fit: BoxFit.cover),
            ),
            SizedBox(width: Dimension.width20 * 1.5),
            Expanded(
              // child: Container(
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallText(
                          text: 'Nike of year',
                          textColor: AppClours.fontColor1,
                          size: Dimension.font20,
                          fontWeight: FontWeight.bold,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.favorite_border_sharp,
                                size: Dimension.iconSize46 / 1.5),
                            SizedBox(width: Dimension.width10),
                            Icon(Icons.delete_forever_sharp,
                                size: Dimension.iconSize46 / 1.5),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallText(
                          text: "\$ 545",
                          textColor: AppClours.fontColor3,
                          size: Dimension.font20,
                          fontWeight: FontWeight.bold,
                        ),
                        _countBox(context),
                      ],
                    ),
                  ),
                ],
              ),
              // ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _countBox(context) {
    return Row(
      children: [
        Container(
          width: Dimension.width30,
          alignment: Alignment.center,
          height: Dimension.height25,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black26..withOpacity(.8),
            ),
          ),
          child: Icon(Icons.add, size: 9),
        ),
        Container(
          width: Dimension.width30,
          alignment: Alignment.center,
          height: Dimension.height25,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black26..withOpacity(.8),
            ),
          ),
          child: Text('1'),
        ),
        Container(
          width: Dimension.width30,
          alignment: Alignment.center,
          height: Dimension.height25,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black26..withOpacity(.8),
            ),
          ),
          child: Icon(Icons.add, size: 9),
        )
      ],
    );
  }
}
