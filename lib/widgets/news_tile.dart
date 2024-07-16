import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/screens/article_view.dart';

class newsTile extends StatelessWidget {
  const newsTile({super.key, required this.article});
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  article.image?? "https://www.bing.com/images/search?view=detailV2&ccid=UYefmuqv&id=61756543E5A634759BB2FEA20153ABCDF5B1C387&thid=OIP.UYefmuqvYGCqQqZN9xaW8QHaGp&mediaurl=https%3a%2f%2fstatic.vecteezy.com%2fsystem%2fresources%2fpreviews%2f004%2f141%2f669%2foriginal%2fno-photo-or-blank-image-icon-loading-images-or-missing-image-mark-image-not-available-or-image-coming-soon-sign-simple-nature-silhouette-in-frame-isolated-illustration-vector.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.51879f9aeaaf6060aa42a64df71696f1%3frik%3dh8Ox9c2rUwGi%252fg%26pid%3dImgRaw%26r%3d0&exph=2989&expw=3333&q=there+is+no+image&simid=608001442452366889&FORM=IRPRST&ck=7AE194F0B8F64819CCBFD74FE50392CE&selectedIndex=4&itb=0",
                ),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                article.title,
                style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                article.description?? "",
                style: TextStyle(fontSize: 15, color: Colors.grey),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
