import 'package:books_store/core/resources/app_colors.dart';
import 'package:books_store/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorMessage;
  const CustomErrorWidget({
    super.key,
    required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Text(
          errorMessage,
          style: AppTextStyles.textStyle18.copyWith(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
