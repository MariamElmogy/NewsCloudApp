import 'package:flutter/material.dart';
import 'package:news_app/features/utils/app_colors.dart';

import '../widgets/category_details_list_view_future_builder.dart';

class CategoryDetailsView extends StatelessWidget {
  const CategoryDetailsView({super.key});

  // static const id = "category view";

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
      body: const CategoryDetailsViewFutureBuilder(),
    );
  }
}
