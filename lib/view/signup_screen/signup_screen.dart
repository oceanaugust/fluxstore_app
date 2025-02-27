import 'package:flutter/material.dart';
import 'package:fluxstore_app/global/custom_text_field.dart';
import 'package:fluxstore_app/global/reusable_button.dart';
import 'package:fluxstore_app/utils/color_constants.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 32, right: 32, top: 58),
          child: Center(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Create \nYour Account",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24, height: 2),
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                CustomTextField(
                  text: "Enter your name",
                  controller: nameController,
                ),
                CustomTextField(
                  text: "Email address",
                  controller: emailController,
                ),
                CustomTextField(
                  text: "Password",
                  controller: passwordController,
                ),
                CustomTextField(
                  bottompadding: 44,
                  text: "Confirm password",
                  controller: confirmPasswordController,
                ),
                ResusableButton(
                  backgroundColor: ColorConstants.black,
                  name: "Sign Up ",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
