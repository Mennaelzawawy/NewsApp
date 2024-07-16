// import 'package:flutter/material.dart';
// import 'package:news_app/Models/article_model.dart';
// import 'package:webview_flutter/webview_flutter.dart';


// class ArticleView extends StatefulWidget {
//   const ArticleView({super.key, required this.article});
//   final ArticleModel article;
//   @override
//   State<ArticleView> createState() => _ArticleViewState();
// }

// class _ArticleViewState extends State<ArticleView> {
//   final WebViewController _controller=WebViewController();
//   double progress=0;
//   @override
//   void initState() {
//     super.initState();
//     _controller
//     ..setJavaScriptMode(JavaScriptMode.unrestricted)
//     ..loadRequest(Uri.parse(widget.article.url??" "))
//     ..setNavigationDelegate( NavigationDelegate(onProgress: (progress) => setState(() {
//       progress=progress;
//     }),));
//   }
//   @override

//   Widget build(BuildContext context) {
//     return Scaffold(body: Center(child: WebViewWidget(controller: _controller,)),);
//   }
// }
