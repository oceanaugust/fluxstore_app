import 'package:flutter/material.dart';
import 'package:fluxstore_app/utils/color_constants.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final double bottompadding;
  final TextEditingController? controller;
  const CustomTextField({
    super.key,
    required this.text,
    this.bottompadding = 20,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottompadding),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorConstants.white,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.black),
          ),
        ),
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
      ),
    );
  }
}
