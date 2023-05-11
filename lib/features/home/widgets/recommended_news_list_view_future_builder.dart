import 'package:flutter/material.dart';
import 'package:news_app/features/utils/app_colors.dart';
import 'package:news_app/features/utils/news_api_service.dart';
import 'recommended_news_list_view.dart';

class RecommendedNewsViewFutureBuilder extends StatelessWidget {
  const RecommendedNewsViewFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsApiService.fetchRecommededNews(),
      builder: (context, snapshot) {
        if (!snapshot.hasError) {
          if (snapshot.connectionState == ConnectionState.done) {
            return RecommendedNewsListView(
              news: snapshot.data!,
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        } else {
          return Text(
            snapshot.error.toString(),
            style: const TextStyle(
              color: AppColors.errorColor,
            ),
          );
        }
      },
    );
  }
}
