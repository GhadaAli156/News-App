import 'package:flutter/material.dart';
import 'package:project_news_app/model/category_model.dart';
import 'package:project_news_app/screens/category_view.dart';

class CategoryCard extends StatelessWidget{
  CategoryCard({required this.categoryModel});
  CategoryModel categoryModel ;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryView(category: categoryModel.title_image),));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(categoryModel.image),fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(8)
          ),
          child: Center(child: Text(categoryModel.title_image,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
          ))
        ),
      ),
    );
  }

}