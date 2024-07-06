import 'package:flutter/material.dart';
import 'package:news_app/Models/containerItem.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key, required this.category,
  });
  final categoryrModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
