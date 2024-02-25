import 'package:flutter/material.dart';
import 'package:news_app/modals/article_model.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({
    super.key,required this.articleModel
  });
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.network(
            articleModel.image ?? 'https://stackoverflow.design/assets/img/logos/so/logo-stackoverflow.png',
            width: double.infinity,
            height: 300,
          ),
        ),
        Text(
          articleModel.title,
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        Text(
          articleModel.subTiltle?? 'Not found',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ],
    );
  }
}
