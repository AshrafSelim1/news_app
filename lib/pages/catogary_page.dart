import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_title_list.dart';

class CatogaryPage extends StatelessWidget {
  const CatogaryPage({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsTiteList(
            category: category,),
        ],
      ),
    );
  }
}
