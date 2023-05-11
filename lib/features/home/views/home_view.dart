import 'package:flutter/material.dart';
import 'package:news_app/features/utils/app_colors.dart';

import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String id = 'homeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'News',
                    style: TextStyle(
                      fontSize: 22,
                      color: AppColors.appBarNewsColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Cloud',
                    style: TextStyle(
                      fontSize: 22,
                      color: AppColors.appBarCloudColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: AppColors.backgroundColor,
      ),
      body: const SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
