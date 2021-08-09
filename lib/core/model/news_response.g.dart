// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsResponse _$NewsResponseFromJson(Map<String, dynamic> json) {
  return NewsResponse(
    status: json['status'] as String,
    articles: (json['articles'] as List<dynamic>)
        .map((e) => Article.fromJson(e as Map<String, dynamic>))
        .toList(),
    totalResults: json['totalResults'] as int,
  );
}

Map<String, dynamic> _$NewsResponseToJson(NewsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
