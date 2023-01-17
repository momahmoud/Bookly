import 'package:books_store/core/resources/app_colors.dart';
import 'package:books_store/features/book_details/presentation/views/widgets/custom_book_action_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: CustomBookActionButton(
            title: '19.99\$',
            onPressed: () {},
            buttonColor: AppColors.kWhiteColor,
            textColor: AppColors.kBlackColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
        Expanded(
          child: CustomBookActionButton(
            title: 'Free Preview',
            onPressed: () {},
            buttonColor: AppColors.kAccentColor,
            textColor: AppColors.kWhiteColor,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        )
      ],
    );
  }
}
