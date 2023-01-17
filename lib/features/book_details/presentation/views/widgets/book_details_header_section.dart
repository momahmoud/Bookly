import 'package:books_store/core/resources/app_assets.dart';
import 'package:books_store/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BookDetailsHeaderSectionWidget extends StatelessWidget
    with PreferredSizeWidget {
  const BookDetailsHeaderSectionWidget({
    super.key,
    this.preferredSize = const Size.fromHeight(50.0),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: AppBar(
        backgroundColor: AppColors.kPrimaryColor,
        elevation: 0,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        title: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            FontAwesomeIcons.xmark,
            size: 25,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 26,
            ),
          ),
        ],
      ),
    );
  }

  @override
  final Size preferredSize;
}
