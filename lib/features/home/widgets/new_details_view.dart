import 'package:flutter/material.dart';
import 'package:news_app/features/models/news_model.dart';
import 'package:news_app/features/utils/app_colors.dart';

import 'news_details_item.dart';

class NewDetailsView extends StatelessWidget {
  const NewDetailsView({super.key, required this.news});

  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text.rich(
          TextSpan(
            text: 'News',
            style: TextStyle(
              color: AppColors.appBarNewsColor,
              fontSize: 20,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Cloud',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.appBarCloudColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                NewsDetailsItem(newModel: news),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
