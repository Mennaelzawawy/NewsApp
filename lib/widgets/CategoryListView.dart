import 'package:flutter/material.dart';

import '../Models/containerItem.dart';
import 'categoryCard.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

    final List <categoryrModel> categories= const[
        categoryrModel(
      image: 'assets/Business.jpg',
      name: 'Business',
    ),
    categoryrModel(
      image: 'assets/entertainment.jpg',
      name: 'Entertainment',
    ),
    categoryrModel(
      image: 'assets/health.jpg',
      name: 'Health',
    ),
    categoryrModel(
      image: 'assets/science.jpg',
      name: 'Science',
    ),
    categoryrModel(
      image: 'assets/technology.jpg',
      name: 'Technology',
    ),
    categoryrModel(
      image: 'assets/sports.jpg',
      name: 'Sports',
    ),

        categoryrModel(
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
