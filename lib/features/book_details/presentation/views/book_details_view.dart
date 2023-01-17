import 'package:books_store/features/book_details/presentation/views/widgets/book_action_widget.dart';
import 'package:books_store/features/book_details/presentation/views/widgets/book_details_header_section.dart';
import 'package:books_store/features/book_details/presentation/views/widgets/book_image_widget.dart';
import 'package:books_store/features/book_details/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_fonts.dart';
import '../../../../core/resources/app_text_styles.dart';
import '../../../home/presentation/views/widgets/book_rating_widget.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: <Widget>[
              const BookDetailsHeaderSectionWidget(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .19),
                child: const BookImageWidget(),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Harry Potter and the Goblet of fire',
                  style: AppTextStyles.textStyle30.copyWith(
                    fontFamily: AppFonts.kPrimaryFont,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Opacity(
                opacity: .7,
                child: Text(
                  'Harry Potter',
                  style: AppTextStyles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(
                height: 35,
              ),
              const BookActions(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .06,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can also like',
                  style: AppTextStyles.textStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SimilarBooksListView()
            ],
          ),
        ),
      ),
    );
  }
}
