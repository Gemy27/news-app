import 'package:dio/dio.dart';
import 'package:news_app/models/articlemodel.dart';

class GetNews {
  final Dio dio;
   GetNews(this.dio);
 Future<List<Articles>> getnews({required String category}) async {
    try {
  Response response = await dio.get(
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=845fb1c6f46242f8a84f22c512763263&category=$category");
      Map <String,dynamic> data=response.data;
      List <dynamic> articles=data["articles"];
  
      List<Articles> li=[];
      for (int i=0;i<articles.length;i++)
      {
        li.add(Articles.fromJson(articles[i]));
      }
      return li;
}  catch (e) {
  return [];
}
  }
}
