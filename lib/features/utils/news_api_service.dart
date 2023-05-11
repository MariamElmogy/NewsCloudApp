import 'package:dio/dio.dart';
import 'package:news_app/features/models/news_model.dart';

import '../home/widgets/category_news_item.dart';

abstract class NewsApiService {
  static const String _apiBaseUrl = "https://newsapi.org/v2/top-headlines";
  static const String _apiKey = 'fd0585db5e9c446683cb4f68d182759f';

  static Future<List<NewsModel>> fetchCategoriesNews() async {
    try {
      final dio = Dio();
      var response = await dio
          .get('$_apiBaseUrl?apiKey=$_apiKey&country=us&category=$category');

      List<NewsModel> news = parseData(response);
      return news;
    } catch (e) {
      if (e is DioError) {
        // is used for checking the type
        var errMessage = e.response?.data['error']['message'] ??
            'Something went wrong: try later';

        throw Exception(errMessage);
      }
      throw Exception('Something went wrong');
    }
  }

  static Future<List<NewsModel>> fetchRecommededNews() async {
    try {
      final dio = Dio();
      var response = await dio.get('$_apiBaseUrl?apiKey=$_apiKey&country=us');

      List<NewsModel> news = parseData(response);
      return news;
    } catch (e) {
      if (e is DioError) {
        // is used for checking the type
        var errMessage = e.response?.data['error']['message'] ??
            'Something went wrong: try later';

        throw Exception(errMessage);
      }
      throw Exception('Something went wrong');
    }
  }

  static List<NewsModel> parseData(Response<dynamic> response) {
    List<NewsModel> news = [];
    var articles = response.data['articles'];
    for (var newMap in articles) {
      news.add(NewsModel.fromJson(newMap));
    }

    return news;
  }
}
