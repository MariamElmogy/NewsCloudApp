import 'package:flutter/material.dart';
import '../views/category_details_view.dart';
import 'category_news_item.dart';

class CategoryNewsListView extends StatelessWidget {
  const CategoryNewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categoryNewsImageData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              category = categoryNewsData[index];
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CategoryDetailsView(); // general
                  },
                ),
              );
            },
            child: CategoryNewsItem(
              index: index,
            ),
          );
        },
      ),
    );
  }
}
