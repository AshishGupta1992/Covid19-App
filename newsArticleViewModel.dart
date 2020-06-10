

import 'package:covidapp/newsArticle.dart';

class NewsArticleViewModel{
  NewsArticle _newsArticle;
  NewsArticleViewModel({NewsArticle article}): _newsArticle = article;

  String get state{
    return _newsArticle.state;
  }

}