import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_routes.dart';
import 'search_result_item_widget.dart';

class SearchResultListViewWidget extends StatelessWidget {
  const SearchResultListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(left: 1, bottom: 15),
      itemCount: 5,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(
                AppRoutes.bookDetailsView,
              );
            },
            child: const SearchResultItemWidget(),
          ),
        );
      },
    );
  }
}
