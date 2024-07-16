import 'package:flutter/material.dart';

import '../Models/category_model.dart';
import 'categoryCard.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

    final List <CategoryModel> categories= const[
        CategoryModel(
      image: 'assets/Business.jpg',
      name: 'Business',
    ),
    CategoryModel(
      image: 'assets/entertainment.jpg',
      name: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/health.jpg',
      name: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.jpg',
      name: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpg',
      name: 'Technology',
    ),
    CategoryModel(
      image: 'assets/sports.jpg',
      name: 'Sports',
    ),

        CategoryModel(
      image: 'assets/general.jpg',
      name: 'General',
        )
  ];

  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      
      child: ListView.builder(scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context,index){
        
        return CategoryCard(category:categories[index] );
      }),
    );
  }
}
