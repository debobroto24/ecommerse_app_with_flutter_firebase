import 'package:flutter/material.dart';
import 'package:shoesmela/util/colors.dart';
import 'package:shoesmela/widgets/big_text.dart';
import 'package:shoesmela/widgets/big_text_button.dart';
import 'package:shoesmela/widgets/small_text.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: AppClours.primaryBackground,
          width: double.maxFinite,
          height: double.maxFinite,
          // height: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 100),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Icon(Icons.percent_outlined,
                      size: 50, color: Colors.black),
                ),
              ),
              SizedBox(height: 4),
              const SmallText(text: 'Your everyday helper & suggestor.'),
              SizedBox(height: 100),
              BigText(
                text: 'Helper',
                textColor: AppClours.fontColor2,
                size: 40,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 100),
              BigTextButton(
                text: 'Get Started',
                backgroundColor: AppClours.buttonBackground1,
                textColor: Colors.white,
                textSize: 20,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 10),
              BigTextButton(
                text: 'Login',
                backgroundColor: Colors.white,
                textColor: AppClours.fontColor2,
                textSize: 20,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 15),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'New around here?',
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: ' Sign in',
                      style: TextStyle(
                          fontSize: 15,
                          color: AppClours.fontColor2,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
