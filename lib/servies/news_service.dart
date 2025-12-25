import 'package:coody/models/articals_model.dart';
import 'package:dio/dio.dart';

class NewsService {

  final Dio dio;

  NewsService(this.dio);


 Future<List<ArticleModel>> getNews()async{
    var response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=8c946068b1044321bc71fb9ef6133ac3&country=us&category=general');
    Map<String,dynamic> jsonData= response.data;

    List<ArticleModel> articlesList = [];
    List<dynamic> articles = jsonData['articles'];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        );
        articlesList.add(articleModel);
      }
    
  return articlesList;  
  }
  
}