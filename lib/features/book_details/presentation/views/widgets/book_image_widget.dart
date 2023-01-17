import 'package:books_store/core/resources/app_assets.dart';
import 'package:flutter/material.dart';

class BookImageWidget extends StatelessWidget {
  const BookImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AppAssets.testImage,
            ),
          ),
        ),
      ),
    );
  }
}
