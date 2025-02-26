import 'package:flutter/material.dart';

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
            colorFilter:
                ColorFilter.mode(Colors.black.withAlpha(150), BlendMode.darken),
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
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              "The home for a fashionista",
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 53, vertical: 15),
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF).withAlpha(50),
                  borderRadius: BorderRadius.circular(29.5),
                  border: Border.all(color: Color(0xffFFFFFF), width: 1.18)),
              child: Text(
                "Get Started",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
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
