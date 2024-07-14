import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_news_app/model/category_news_model.dart';

class CategoryNews extends StatelessWidget {
  CategoryNews({super.key, required this.categoryNewsModel});
  CategoryNewsModel categoryNewsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(3),
              child: Image.network(categoryNewsModel.image!)),
          Text(
            maxLines: 2,
            categoryNewsModel.title??'',
            style: const TextStyle(
            overflow: TextOverflow.ellipsis,
            color: Colors.black
          ),),
          Text(
            maxLines: 2,
            categoryNewsModel.subTitle,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.grey
            ),)
        ],
      ),
    );
  }
}