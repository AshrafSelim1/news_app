import 'package:flutter/material.dart';
import 'package:news_app/services/news_services.dart';
import 'pages/home_page.dart';

void main() {
  NewsService().getNews(category: 'general');
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
