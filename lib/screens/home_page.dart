import 'package:flutter/material.dart';
import 'package:news_app/widgets/newsListView_builder.dart';
import '../widgets/CategoryListView.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News ',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                'Cloud ',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              )
            ],
          ),
        ),
        body: CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: CategoryListView(),
            ),
          ),
          NewsListViewBuilder(category: 'general',)
        ]));
  }
}
