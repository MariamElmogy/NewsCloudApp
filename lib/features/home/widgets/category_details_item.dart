import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/features/models/news_model.dart';

import '../../utils/app_colors.dart';

class CategoryDetailsItem extends StatelessWidget {
  const CategoryDetailsItem({super.key, required this.news});

  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              width: 370,
              height: 230,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                errorWidget: (context, _, __) {
                  return const Icon(
                    Icons.error,
                    color: AppColors.errorColor,
                  );
                },
                imageUrl: news.urlToImage ?? '',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 370,
            child: Text(
              news.title ?? 'Unavailable',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.titleColor,
                fontSize: 20,
                // fontFamily: AppFonts.titleFont,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          SizedBox(
            width: 370,
            child: Text(
              news.description ?? 'Unavailable',
              style: const TextStyle(
                color: AppColors.descColor,
                fontSize: 14,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
