import 'dart:convert';

import 'package:http/http.dart';
import 'package:news_app/models/article_model.dart';
//HTTP Request

class ApiService {
  final endPointUrl =
      "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=2f450ed20ea34316860e6b43ea1fbab9";

  Future<List<Article>> getArticles() async {
    Response response = await get(Uri.parse(endPointUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      print(body);

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      print(articles);
      return articles;
    } else {
      throw "Can't get articles.";
    }
  }
}
