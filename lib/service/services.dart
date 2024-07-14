import 'package:dio/dio.dart';
import 'package:project_news_app/model/category_news_model.dart';
class Services{
  Dio dio = Dio();
  Future<List<CategoryNewsModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=fb18c2e16bc643c4803f81260a30d1c5&$category');
      Map<String,dynamic> jsonData = response.data;
      List<dynamic> articles  = jsonData['articles'];
      List<CategoryNewsModel> categoryNews = [];
      for(var article in articles){
        CategoryNewsModel categoryNewsModel = CategoryNewsModel.fromJson(article);
        categoryNews.add(categoryNewsModel);
      }
      return categoryNews;
    }
    catch(e){
      return [];
    }
  }
}