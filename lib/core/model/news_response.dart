import 'package:json_annotation/json_annotation.dart';
import 'package:news_app/core/model/article.dart';

part 'news_response.g.dart';

@JsonSerializable()
class NewsResponse {
  @JsonKey(name: "status")
  String status;

  @JsonKey(name: "totalResults")
  int totalResults;

  @JsonKey(name: "articles")
  List<Article> articles;

  NewsResponse({
    required this.status,
    required this.articles,
    required this.totalResults,
  });

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$NewsResponseToJson(this);
}
