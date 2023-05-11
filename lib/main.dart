import 'package:flutter/material.dart';
import 'package:news_app/features/utils/app_colors.dart';

import 'features/home/views/home_view.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,
      ),
      routes: {
        HomeView.id: (context) => const HomeView(),
      },
      initialRoute: HomeView.id,
      debugShowCheckedModeBanner: false,
      title: 'News App',
    );
  }
}
