import 'package:books_store/core/resources/app_text_styles.dart';
import 'package:books_store/features/home/presentation/views/widgets/best_seller_item_widget.dart';
import 'package:books_store/features/home/presentation/views/widgets/best_seller_list_widget.dart';
import 'package:books_store/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:books_store/features/home/presentation/views/widgets/home_header_section_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                HomeHeaderSectionWidget(),
                SizedBox(height: 5),
                FeaturedBooksListView(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text(
                    'Best Seller',
                    style: AppTextStyles.textStyle18,
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
          const SliverFillRemaining(
            child: BestSellerListViewWidget(),
          )
        ],
      ),
    );
  }
}
