import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
    this.onPressed,
  });
  final Color backgroundColor;
  final Color textColor;
  final BorderRadiusGeometry? borderRadius;
  final String text;
  final double? fontSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        onPressed:onPressed,
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: fontSize),
        ),
      ),
    );
  }
}
