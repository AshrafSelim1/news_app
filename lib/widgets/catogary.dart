import 'package:flutter/material.dart';
import 'package:news_app/modals/catogray_modal.dart';
import 'package:news_app/pages/catogary_page.dart';

class CatogaryCard extends StatelessWidget {
  const CatogaryCard({
    super.key,
    required this.catogary,
  });
  final CatogaryModal catogary;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return  CatogaryPage(
              category: catogary.title,);
          }),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: 100,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(catogary.image),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
            child: Text(
          catogary.title,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
