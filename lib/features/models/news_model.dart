import 'package:flutter/cupertino.dart';

class NewsModel {
  final String? urlToImage;
  final String? category;
  final String? title;
  final String? description;
  final String? author;
  final String? publishedAt;
  final String? content;
  final String? url;

  NewsModel({
    required this.urlToImage,
    required this.category,
    required this.title,
    required this.description,
    @required this.author,
    @required this.publishedAt,
    required this.content,
    @required this.url,
  });

  factory NewsModel.fromJson(dynamic jsonData) {
    return NewsModel(
      urlToImage: jsonData['urlToImage'],
      category: jsonData['category'],
      description: jsonData['description'],
      title: jsonData['title'],
      author: jsonData['author'],
      publishedAt: jsonData['publishedAt'],
      content: jsonData['content'],
      url: jsonData['url'],
    );
  }
}
