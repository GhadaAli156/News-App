class CategoryNewsModel {
  String? title;
  String subTitle;
  String? image;
  CategoryNewsModel({required this.title, required this.subTitle, required this.image});

  factory CategoryNewsModel.fromJson(json){
    return CategoryNewsModel(
        image: json['urlToImage'],
        title: json['title'],
        subTitle: json['description']);
  }
}