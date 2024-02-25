import 'package:flutter/material.dart';
import 'package:news_app/modals/catogray_modal.dart';
import 'package:news_app/widgets/catogary.dart';

class CatogaryList extends StatelessWidget {
  const CatogaryList({
    super.key,
  });
  final List<CatogaryModal> catogaries = const [
    CatogaryModal(image: 'assets/business.avif', title: 'business'),
    CatogaryModal(image: 'assets/entertaiment.avif', title: 'entertainment'),
    CatogaryModal(image: 'assets/general.avif', title: 'general'),
    CatogaryModal(image: 'assets/health.avif', title: 'health'),
    CatogaryModal(image: 'assets/science.avif', title: 'science'),
    CatogaryModal(image: 'assets/sports.avif', title: 'sports'),
    CatogaryModal(image: 'assets/technology.avif', title: 'technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: catogaries.length,
      itemBuilder: (context, index) {
        return CatogaryCard(
          catogary: catogaries[index],
        );
      },
    );
  }
}
