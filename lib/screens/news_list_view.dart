import 'package:flutter/material.dart';
import 'package:project_news_app/category/category_news.dart';
import 'package:project_news_app/model/category_news_model.dart';

class NewsListView  extends StatelessWidget {
  NewsListView ({super.key,required this.categoryNewsModel});

  List<CategoryNewsModel> categoryNewsModel=[];

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
                (context, index) => CategoryNews(categoryNewsModel: categoryNewsModel[index])
        )
    );
  }
}
