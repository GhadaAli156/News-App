import 'package:flutter/material.dart';
import 'package:project_news_app/category/category_card.dart';
import '../model/category_model.dart';

class CategoryList extends StatelessWidget {

  List<CategoryModel> list =[
    CategoryModel(image: 'assets/images/bussiness.jpg', title_image: 'Bussiness'),
    CategoryModel(image: 'assets/images/technology.jpeg', title_image: 'Technology'),
    CategoryModel(image: 'assets/images/bussiness.jpg', title_image: 'Bussiness'),
    CategoryModel(image: 'assets/images/technology.jpeg', title_image: 'Technology'),
    CategoryModel(image: 'assets/images/bussiness.jpg', title_image: 'Bussiness'),
    CategoryModel(image: 'assets/images/technology.jpeg', title_image: 'Technology'),
    CategoryModel(image: 'assets/images/bussiness.jpg', title_image: 'Bussiness'),
    CategoryModel(image: 'assets/images/technology.jpeg', title_image: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => CategoryCard(categoryModel: list[index]),
      ),
    );
  }
}
