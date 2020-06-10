

import 'package:covidapp/newsArticle.dart';
import 'package:covidapp/newsArticleViewModel.dart';
import 'package:covidapp/webservice.dart';
import 'package:flutter/foundation.dart';

class NewsArticleListViewModel extends ChangeNotifier{
  List<NewsArticleViewModel> articles = List<NewsArticleViewModel>();
  NewsArticleListViewModel(){
    _populateTopHeadlines();
  }
  Future<void> _populateTopHeadlines() async{

    List<NewsArticle> newsArticles = await Webservice().fetchTopHeadline();
    this.articles=newsArticles.map((article) => NewsArticleViewModel(article: article)).toList();
    notifyListeners();
}

}