class ArticleModel {
  late Source source;
  late String author;
  late String title;
  late String description;
  late String url;
  late String urlToImage;
  late String publishedAt;
  late String content;

  ArticleModel({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  ArticleModel.fromJson(Map<String, dynamic> json) {
    source = Source.fromJson(json['source'] ?? {});
    author = json['author'] ?? '';
    title = json['title'] ?? '';
    description = json['description'] ?? '';
    url = json['url'] ?? '';
    urlToImage = json['urlToImage'] ?? '';
    publishedAt = json['publishedAt'] ?? '';
    content = json['content'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['source'] = source.toJson();
    data['author'] = author;
    data['title'] = title;
    data['description'] = description;
    data['url'] = url;
    data['urlToImage'] = urlToImage;
    data['publishedAt'] = publishedAt;
    data['content'] = content;
    return data;
  }
}

class Source {
  late String id;
  late String name;

  Source({required this.id, required this.name});

  Source.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? '';
    name = json['name'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
