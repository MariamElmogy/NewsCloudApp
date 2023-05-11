import 'package:flutter/material.dart';

import '../../utils/news_api_service.dart';
import 'category_details_list_view.dart';

class CategoryDetailsViewFutureBuilder extends StatelessWidget {
  const CategoryDetailsViewFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FutureBuilder(
          future: NewsApiService.fetchCategoriesNews(),
          builder: (context, snapshot) {
            if (!snapshot.hasError) {
              if (snapshot.connectionState == ConnectionState.done) {
                return CategoryDetailsListView(
                  news: snapshot.data!,
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            } else {
              return Text(
                snapshot.error.toString(),
                style: const TextStyle(
                  color: Colors.white,
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
