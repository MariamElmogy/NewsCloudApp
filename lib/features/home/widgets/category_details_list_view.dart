import 'package:flutter/material.dart';
import 'package:news_app/features/home/widgets/category_details_item.dart';
import 'package:news_app/features/models/news_model.dart';
import 'new_details_view.dart';

class CategoryDetailsListView extends StatelessWidget {
  const CategoryDetailsListView({super.key, required this.news});

  final List<NewsModel> news;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: news.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            var currentNew = news[index];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return NewDetailsView(
                    news: currentNew,
                  );
                },
              ),
            );
          },
          child: CategoryDetailsItem(
            news: news[index],
          ),
        );
      },
    );
  }
}
