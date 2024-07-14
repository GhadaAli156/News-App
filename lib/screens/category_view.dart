import 'package:flutter/material.dart';
import 'package:project_news_app/screens/news_listView_builder.dart';

class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({super.key,required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(category: category)
        ],
      ),
    );
  }
}
