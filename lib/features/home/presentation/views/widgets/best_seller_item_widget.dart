import 'package:books_store/core/resources/app_assets.dart';
import 'package:books_store/core/resources/app_fonts.dart';
import 'package:books_store/core/resources/app_text_styles.dart';
import 'package:books_store/features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BestSellerItemWidget extends StatelessWidget {
  final String imageUrl;
  const BestSellerItemWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 120,
        child: Row(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 2.6 / 3.7,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: CachedNetworkImageProvider(
                      imageUrl,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'Harry Potter and the Goblet of fire',
                      style: AppTextStyles.textStyle20.copyWith(
                        fontFamily: AppFonts.kPrimaryFont,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: const Text(
                      'J.K. Rowling',
                      style: AppTextStyles.textStyle14,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '19.98 \$',
                        style: AppTextStyles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const BookRating(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
