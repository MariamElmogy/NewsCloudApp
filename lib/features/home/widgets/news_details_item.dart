import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/features/models/news_model.dart';
import 'package:news_app/features/utils/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetailsItem extends StatelessWidget {
  const NewsDetailsItem({super.key, required this.newModel});

  final NewsModel newModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              newModel.title ?? '',
              style: const TextStyle(
                fontSize: 20,
                color: AppColors.titleColor,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            newModel.author ?? 'unknown',
            style: const TextStyle(
              fontSize: 12,
              color: AppColors.authorColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            newModel.publishedAt ?? '',
            style: const TextStyle(
              fontSize: 12,
              color: AppColors.dateColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
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
                imageUrl: newModel.urlToImage ?? '',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            newModel.description ?? 'None',
            style: const TextStyle(
              fontSize: 20,
              color: AppColors.descColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            newModel.content ?? 'None',
            style: const TextStyle(
              fontSize: 20,
              color: AppColors.contentColor,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.31,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors
                        .ButtonColor, // Set the background color to yellow
                  ),
                  onPressed: () async {
                    await launchUrl(Uri.parse(newModel.url!));
                  },
                  child: const Text(
                    "View More",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
