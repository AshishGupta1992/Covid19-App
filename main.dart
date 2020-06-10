import 'package:covidapp/newsArticleListViewModel.dart';
import 'package:covidapp/newsList.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:covidapp/newsArticleListViewModel.dart';
import 'package:covidapp/newsList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fresh News",
      home: ChangeNotifierProvider(
        builder: (context) => NewsArticleListViewModel(),
        child: NewsList(),
      )

    );
  }
}




