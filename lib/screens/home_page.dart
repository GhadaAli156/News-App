import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_news_app/screens/category_list.dart';
import 'news_listView_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
            Text(" Cloud",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange
              ),)
          ],
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CategoryList()),
          NewsListViewBuilder(category: 'general')
        ],
      ),
    );
  }
}
