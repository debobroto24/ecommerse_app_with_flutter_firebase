import 'package:flutter/material.dart';
import 'package:shoesmela/util/colors.dart';
import 'package:shoesmela/util/dimension.dart';
import 'package:shoesmela/widgets/small_text.dart';

class SportProductList extends StatelessWidget {
  const SportProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 50),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Dimension.width141,
              height: Dimension.height238,
              alignment: Alignment.center,
              padding: EdgeInsets.all(Dimension.width10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(Dimension.radius10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Dimension.width109,
                    height: Dimension.height109,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      'images/product1.png',
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: Dimension.height15),
                  SmallText(
                      text: 'Name of product',
                      textColor: AppClours.fontColor1,
                      fontWeight: FontWeight.bold,
                      size: 12),
                  Text(
                    'Description',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppClours.fontColor1),
                  ),
                  SizedBox(height: Dimension.height10),
                  SmallText(
                      text: '4545',
                      textColor: AppClours.fontColor2,
                      fontWeight: FontWeight.bold,
                      size: 12),
                  SizedBox(height: Dimension.height10),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: ' 745',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: AppClours.fontBlack,
                          ),
                        ),
                        TextSpan(
                          text: '745',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: AppClours.fontBlack,
                          ),
                        ),
                        TextSpan(
                          text: '777',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: AppClours.fontColor3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: Dimension.height10),
            Container(
              width: Dimension.width141,
              height: Dimension.height238,
              alignment: Alignment.center,
              padding: EdgeInsets.all(Dimension.width10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(Dimension.radius10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Dimension.width109,
                    height: Dimension.height109,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimension.radius20)),
                    child: Image.asset(
                      'images/product1.png',
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: Dimension.height15),
                  SmallText(
                      text: 'Name of product',
                      textColor: AppClours.fontColor1,
                      fontWeight: FontWeight.bold,
                      size: 12),
                  Text(
                    'Description',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppClours.fontColor1),
                  ),
                  SizedBox(height: Dimension.height10),
                  SmallText(
                      text: '4545',
                      textColor: AppClours.fontColor2,
                      fontWeight: FontWeight.bold,
                      size: 12),
                  SizedBox(height: Dimension.height10),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: ' 745',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: AppClours.fontBlack,
                          ),
                        ),
                        TextSpan(
                          text: '745',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: AppClours.fontBlack,
                          ),
                        ),
                        TextSpan(
                          text: '777',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: AppClours.fontColor3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: Dimension.height10),
            Container(
              width: Dimension.width141,
              height: Dimension.height238,
              alignment: Alignment.center,
              padding: EdgeInsets.all(Dimension.width10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(Dimension.radius10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Dimension.width109,
                    height: Dimension.height109,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      'images/product1.png',
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: Dimension.height15),
                  SmallText(
                      text: 'Name of product',
                      textColor: AppClours.fontColor1,
                      fontWeight: FontWeight.bold,
                      size: 12),
                  Text(
                    'Description',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppClours.fontColor1),
                  ),
                  SizedBox(height: Dimension.height10),
                  SmallText(
                      text: '4545',
                      textColor: AppClours.fontColor2,
                      fontWeight: FontWeight.bold,
                      size: 12),
                  SizedBox(height: Dimension.height10),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: ' 745',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: AppClours.fontBlack,
                          ),
                        ),
                        TextSpan(
                          text: '745',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: AppClours.fontBlack,
                          ),
                        ),
                        TextSpan(
                          text: '777',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: AppClours.fontColor3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: Dimension.height10),
          ],
        ),
      ),
    );
  }
}
