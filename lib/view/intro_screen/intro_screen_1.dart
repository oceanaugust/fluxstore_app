import 'package:flutter/material.dart';
import 'package:fluxstore_app/global/reusable_button.dart';
import 'package:fluxstore_app/utils/color_constants.dart';
import 'package:fluxstore_app/view/signup_screen/signup_screen.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 351,
                  decoration: BoxDecoration(color: ColorConstants.darkGrey),
                ),
              ),
              _buildCarrouselSection(context),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildCarrouselSection(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 55,
        ),
        Text(
          "Discover something new",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 17,
        ),
        Text(
          "Special new arrivals just for you",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          children: [
            SizedBox(
              height: 368,
              width: 261,
              child: PageView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstants.white),
                  child: Image.asset(
                    "assets/images/model image.png",
                    alignment: Alignment.bottomCenter,
                    height: 349,
                    width: 217,
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 57,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: List.generate(
            3,
            (index) => Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstants.lightGrey),
            ),
          ),
        ),
        SizedBox(
          height: 27,
        ),
        ResusableButton(
          alpha: 160,
          backgroundColor: ColorConstants.white,
          boderColor: ColorConstants.lightGrey,
          name: "Shopping Now",
          onButtonPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignupScreen(),
              ),
            );
          },
        )
      ],
    );
  }
}
