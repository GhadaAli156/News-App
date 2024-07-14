import 'package:flutter/material.dart';
import 'package:project_news_app/screens/news_list_view.dart';
import 'package:project_news_app/service/services.dart';

import '../model/category_news_model.dart';
class NewsListViewBuilder extends StatefulWidget{
  final String category;
  NewsListViewBuilder({required this.category});
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = Services().getNews(category: 'general');
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CategoryNewsModel>>(
        future: future,
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return NewsListView(
                categoryNewsModel: snapshot.data??[]);
          }
          else if(snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 200),
                child: Center(child: Text('oops there was an error try letter')),
              ),
            );
          }
          else{
            return const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 200),
                child: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        },
    );
  }
}