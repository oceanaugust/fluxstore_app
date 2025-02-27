import 'package:flutter/material.dart';
import 'package:fluxstore_app/global/reusable_button.dart';
import 'package:fluxstore_app/utils/color_constants.dart';
import 'package:fluxstore_app/view/intro_screen/intro_screen_1.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                ColorConstants.black.withAlpha(150), BlendMode.darken),
            image: AssetImage(
              "assets/images/image 45.png",
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Welcome to GemStore!",
              style: TextStyle(
                  color: ColorConstants.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              "The home for a fashionista",
              style: TextStyle(
                  color: ColorConstants.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(
              height: 60,
            ),
            ResusableButton(
              alpha: 160,
              backgroundColor: ColorConstants.white,
              boderColor: ColorConstants.lightGrey,
              name: "Get Started!",
              onButtonPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IntroScreen1(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
