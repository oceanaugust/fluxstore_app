import 'package:flutter/material.dart';
import 'package:fluxstore_app/utils/color_constants.dart';

class ResusableButton extends StatelessWidget {
  final String name;
  final void Function()? onButtonPressed;
  final Color textColor;
  final Color? boderColor;
  final Color backgroundColor;
  final int alpha;
  const ResusableButton({
    super.key,
    required this.name,
    this.onButtonPressed,
    this.boderColor = ColorConstants.white,
    this.textColor = ColorConstants.white,
    this.backgroundColor = ColorConstants.white,
    this.alpha = 255,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 53, vertical: 15),
        decoration: BoxDecoration(
            color: backgroundColor.withAlpha(alpha),
            borderRadius: BorderRadius.circular(29.5),
            border: boderColor != null
                ? Border.all(color: boderColor!, width: 1.18)
                : null),
        child: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
