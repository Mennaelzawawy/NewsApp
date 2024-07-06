// import 'package:flutter/material.dart';
// import 'package:news_app/Models/article_model.dart';

// class newsTile extends StatelessWidget {
//   const newsTile({super.key, required this.article});
//   final ArticleModel article;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             width: double.infinity,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: Image.network(
//                 article.image,
//               ),
//             ),
//           ),
//           SizedBox(height: 5,),
//           Padding(
//             padding: const EdgeInsets.only(left: 8),
//             child: Text(
//               article.title,
//               style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
//               overflow: TextOverflow.ellipsis,
//               maxLines: 2,
//             ),
//           ),
//           SizedBox(height: 5,),
//           Padding(
//             padding: const EdgeInsets.only(left: 8),
//             child: Text(
//               article.description,
//               style: TextStyle(fontSize: 15, color: Colors.grey),
//               overflow: TextOverflow.ellipsis,
//               maxLines: 2,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';


// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModel.image,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.description ,
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
