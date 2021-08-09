import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable()
class Article {
  @JsonKey(name: "author")
  String? author;

  @JsonKey(name: "description")
  String? description;

  @JsonKey(name: "title")
  String? title;

  @JsonKey(name: "urlToImage")
  String? imageUrl;

  @JsonKey(name: "url")
  String? url;

  @JsonKey(name: "content")
  String? content;

  @JsonKey(name: "publishedAt")
  String publishedAt;

  Article({
    this.author,
    required this.description,
    this.imageUrl,
    required this.title,
    required this.url,
    required this.content,
    required this.publishedAt,
  });

  DateTime? get getPublishedAtDate => DateTime.tryParse(publishedAt);

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
