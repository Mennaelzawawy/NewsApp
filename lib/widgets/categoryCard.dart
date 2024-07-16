import 'package:flutter/material.dart';
import 'package:news_app/Models/category_model.dart';
import 'package:news_app/screens/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key, required this.category,
  });
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder:(context)=> CategoryView(category: category.name))),
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                  image: AssetImage(
                      (category.image)),
                  fit: BoxFit.fill)),
          child: Center(
              child: Text(
            category.name,
            style: TextStyle(fontSize: 22, color: Colors.black,fontWeight: FontWeight.bold),
            
          )),
          height: 100,
          width: 220,
          
        ),
      ),
    );
  }
}
