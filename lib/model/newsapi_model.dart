class NewsapiModel {
  String status;
  int totalResults;
  List<Article> articles;

  NewsapiModel({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory NewsapiModel.mapToModel(Map m1) => NewsapiModel(
        status: m1["status"],
        totalResults: m1["totalResults"],
        articles: List<Article>.from(
            m1["articles"].map((e) => Article.mapToModel(e))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "totalResults": totalResults,
        "articles": List<dynamic>.from(articles.map((e) => e.toJson())),
      };
}

class Article {
  Source? source;
  String? author, title, content, description, url, urlToImage;
  DateTime? publishedAt;

  Article({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory Article.mapToModel(Map m1) => Article(
        source: Source.mapToModel(m1["source"]),
        author: m1["author"],
        title: m1["title"],
        description: m1["description"],
        url: m1["url"],
        urlToImage: m1["urlToImage"],
        publishedAt: DateTime.parse(m1["publishedAt"]),
        content: m1["content"],
      );

  Map<String, dynamic> toJson() => {
        "source": source?.toJson(),
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt?.toIso8601String(),
        "content": content,
      };
}

class Source {
  String? id;
  String? name;

  Source({
    this.id,
    this.name,
  });

  factory Source.mapToModel(Map m1) => Source(
        id: m1["id"],
        name: m1["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
