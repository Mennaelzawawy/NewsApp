import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_title_listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key, required this.category,
  });
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViiewBuilderState();
}

class _NewsListViiewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future=NewsService(dio: Dio()).getNews(category: widget.category);
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<ArticleModel>> (
        future: future,
        builder: (context, snapshot) {
          
          if(snapshot.hasData){ return  NewsListView(
            articles: snapshot.data!,
          );}
          else if(snapshot.hasError){return
            const SliverToBoxAdapter(child: Text(
      "There is a problem,try later"
    ),);
          }
          else{ return
            const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
          }
       
        });

    // return isLoading? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())): articles.isNotEmpty?
    // NewsListView(articles:articles ,):
    // SliverToBoxAdapter(child: Text(
    //   "There is a problem,try later"
    // ),)
    // ;
  }
}
