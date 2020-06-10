class NewsArticle{
  final int active;
  final int confirmed;
  final int deaths;
  final int recovered;
  final String state;

  NewsArticle({this.active, this.confirmed, this.deaths, this.recovered, this.state});

  factory NewsArticle.fromJSON(Map<String, dynamic> json){
    return NewsArticle(
      active: json["active"],
      confirmed: json["confirmed"],
      deaths: json["deaths"],
      recovered: json["recovered"],
      state: json["state"]
    );
  }
}

