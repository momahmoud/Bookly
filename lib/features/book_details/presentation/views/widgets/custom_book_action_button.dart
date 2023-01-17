import 'package:books_store/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomBookActionButton extends StatelessWidget {
  final String title;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;
  final BorderRadiusGeometry borderRadius;

  const CustomBookActionButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.buttonColor,
    required this.textColor,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: AppTextStyles.textStyle16.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
