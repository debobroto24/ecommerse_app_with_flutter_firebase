import 'package:flutter/material.dart';
import 'package:shoesmela/util/colors.dart';
import 'package:shoesmela/util/dimension.dart';
import 'package:shoesmela/widgets/big_text.dart';
import 'package:shoesmela/widgets/big_text_and_icon_button%20copy.dart';
import 'package:shoesmela/widgets/big_text_button.dart';
import 'package:shoesmela/widgets/small_text.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: Dimension.height100),
            BigText(
              text: 'Sign in',
              fontWeight: FontWeight.bold,
              size: Dimension.font36,
              textColor: AppClours.fontBlack,
            ),
            SizedBox(height: Dimension.height50),
            BigTextAndIconButton(
              text: 'Sigin in with Apple',
              icon: Icons.apple_outlined,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.white,
              textSize: Dimension.font20,
              textColor: AppClours.fontBlack,
            ),
            SizedBox(height: Dimension.height20),
            BigTextAndIconButton(
              text: 'Sigin in with Google',
              icon: Icons.person_outline,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.white,
              textSize: Dimension.font20,
              textColor: Colors.blueAccent,
            ),
            SizedBox(height: Dimension.height10 * 4),
            SmallText(
                text: 'or get a link emailed to you.',
                textColor: AppClours.fontBlack),
            SizedBox(height: Dimension.height10 * 4),
            BigTextButton(
                text: 'Work email address',
                backgroundColor: Colors.white,
                textColor: AppClours.fontBlack),
            SizedBox(height: Dimension.height20),
            BigTextButton(
              text: 'Email me a signup link',
              textColor: Colors.white,
              backgroundColor: AppClours.buttonBackground1,
            ),
            SizedBox(height: Dimension.height100),
            SmallText(text: 'You are completely safe', textColor: Colors.black),
            SmallText(
              text: 'Read our Terms and Condition',
              textColor: AppClours.fontColor2,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
