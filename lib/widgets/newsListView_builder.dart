// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/Models/article_model.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/widgets/news_title_listview.dart';

// class NewsListViewBuilder extends StatefulWidget {
//   const NewsListViewBuilder({
//     super.key,
//   });

//   @override
//   State<NewsListViewBuilder> createState() => _NewsListViiewBuilderState();
// }

// class _NewsListViiewBuilderState extends State<NewsListViewBuilder> {
//   var future;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     future=NewsService(dio: Dio()).getNews();
//   }




//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder <List<ArticleModel>> (
//         future: future,
//         builder: (context, snapshot) {
          
//           if(snapshot.hasData){ return  NewsListView(
//             articles: snapshot.data!,
//           );}
//           else if(snapshot.hasError){return
//             const SliverToBoxAdapter(child: Text(
//       "There is a problem,try later"
//     ),);
//           }
//           else{ return
//             const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
//           }
       
//         });

//     // return isLoading? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())): articles.isNotEmpty?
//     // NewsListView(articles:articles ,):
//     // SliverToBoxAdapter(child: Text(
//     //   "There is a problem,try later"
//     // ),)
//     // ;
//   }
// }
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/widgets/news_title_listview.dart';

import '../services/news_service.dart';


class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key});



  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(dio: Dio()).getNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
             return SliverToBoxAdapter(child: Center(child: Text("there is a data",style: TextStyle(color: Colors.black) ,)));
            // return NewsListView(
            //   articles: snapshot.data!,
            // );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('oops  was an error, try later'),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
