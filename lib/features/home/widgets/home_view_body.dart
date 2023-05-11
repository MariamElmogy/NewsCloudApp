import 'package:flutter/material.dart';
import 'category_news_list_view.dart';
import 'recommended_news_list_view_future_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 30)),
        SliverToBoxAdapter(child: CategoryNewsListView()),
        SliverToBoxAdapter(child: SizedBox(height: 40)),
        SliverToBoxAdapter(child: RecommendedNewsViewFutureBuilder()),
      ],
    );
  }
}
