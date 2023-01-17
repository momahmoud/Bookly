import 'package:books_store/core/resources/app_colors.dart';
import 'package:books_store/core/resources/app_text_styles.dart';
import 'package:books_store/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:books_store/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: const Icon(
                      FontAwesomeIcons.xmark,
                      size: 25,
                      color: AppColors.kAccentColor,
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Expanded(
                    child: CustomSearchTextField(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Search Result',
                style: AppTextStyles.textStyle18,
              ),
              const SizedBox(height: 20),
              const Expanded(
                child: SearchResultListViewWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
