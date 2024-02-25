import 'package:dio/dio.dart';
import 'package:news_app/modals/article_model.dart';

class NewsService {
  final Dio dio = Dio();

  Future<List<ArticleModel>> getNews({required String category
}) async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=27b40ededf314e708e178d2cbbf6481f');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articleList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTiltle: article['description'],
      );
      articleList.add(articleModel);
    }
    return articleList;
  }
}
