import 'package:books_store/core/resources/app_assets.dart';
import 'package:books_store/core/resources/app_colors.dart';
import 'package:books_store/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeHeaderSectionWidget extends StatelessWidget with PreferredSizeWidget {
  const HomeHeaderSectionWidget({
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
        title: Image.asset(
          AppAssets.logo,
          height: 20,
        ),
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(
                AppRoutes.searchView,
              );
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
          )
        ],
      ),
    );
  }

  @override
  final Size preferredSize;
}
