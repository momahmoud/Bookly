import 'package:books_store/core/helper_widgets/custom_error_widget.dart';
import 'package:books_store/core/helper_widgets/custom_loading_widget.dart';
import 'package:books_store/features/home/presentation/manager/newest_books/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_routes.dart';
import 'best_seller_item_widget.dart';

class BestSellerListViewWidget extends StatelessWidget {
  const BestSellerListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            padding: const EdgeInsets.only(left: 1, bottom: 15),
            itemCount: state.books.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRoutes.bookDetailsView,
                    );
                  },
                  child: BestSellerItemWidget(
                      imageUrl: state
                          .books[index].volumeInfo!.imageLinks!.thumbnail!),
                ),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }
}
