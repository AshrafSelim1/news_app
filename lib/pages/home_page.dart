import 'package:flutter/material.dart';
import 'package:news_app/widgets/catogary_list.dart';
import 'package:news_app/widgets/news_title_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
              ),
              Text(
                'Cloud',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 100,
                  child: CatogaryList(),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
             NewsTiteList(
                category: 'general', 
),
              // SliverToBoxAdapter(
              //   child: NewsTiteList(),
              // )
            ],
          ),
        )
        // Column(
        // children: const [
        //   SizedBox(
        //     height: 100,
        //     child: CatogaryList(),
        //   ),
        //   SizedBox(height: 20,),
        //   Expanded(child: NewsTiteList()),
        // ],
        );
  }
}
