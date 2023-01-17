import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeaturedItemWidget extends StatelessWidget {
  final String imageUrl;
  const FeaturedItemWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: CachedNetworkImageProvider(
              imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}
