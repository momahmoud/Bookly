import 'package:books_store/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: AppColors.kWhiteColor,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
          hintText: 'Search',
          suffixIcon: IconButton(
            icon: const Opacity(
              opacity: .8,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22,
                color: AppColors.kWhiteColor,
              ),
            ),
            onPressed: () {},
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: AppColors.kAccentColor,
            ),
          ),
        ),
      ),
    );
  }
}
