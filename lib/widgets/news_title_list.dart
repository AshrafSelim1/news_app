import 'package:flutter/material.dart';
import 'package:news_app/modals/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_title.dart';

class NewsTiteList extends StatefulWidget {
  const NewsTiteList({
    super.key, required this.category,
  });
  final String category;
  @override
  State<NewsTiteList> createState() => _NewsTiteListState();
}

class _NewsTiteListState extends State<NewsTiteList> {
  bool isLoading = true;
  List<ArticleModel> articles = [];
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService().getNews(category: widget.category);
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : SliverList.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return NewsTitle(
                articleModel: articles[index],
              );
            });
  }
}
/********************************************************/
// class NewsTitleList extends StatefulWidget {
//   const NewsTitleList({super.key});

//   @override
//   State<NewsTitleList> createState() => _NewsTitleListState();
// }

// class _NewsTitleListState extends State<NewsTitleList> {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: NewsService().getNews(),
//       builder: (context,snapshot){
//         return if(snapshot.hasData){
//           NewsTitle(
//                 articleModel: articles[index],
//               );
//         }
//       }, 
//     );
//   }
// }
