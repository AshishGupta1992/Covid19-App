import 'dart:convert';

import 'package:covidapp/newsArticle.dart';
import 'package:http/http.dart' as http;

class Webservice{

  Future<List<NewsArticle>> fetchTopHeadline() async {
    String url = "https://api.covid19india.org/data.json";
    final response = await http.get(url);

    if(response.statusCode==200){
      final result = jsonDecode(response.body);
      Iterable list = result["statewise"];
      return list.map((article) => NewsArticle.fromJSON(article)).toList();


    }
    else{
      throw Exception("Failed to get top news");
    }

  }
}