import 'package:get/get.dart';

import 'package:news_app/core/model/article.dart';
import 'package:news_app/core/model/news_response.dart';
import 'package:news_app/core/repository/news_repo.dart';
import 'package:news_app/service/http_service.dart';
import 'package:news_app/service/http_service_impl.dart';

class NewsRepoImpl implements NewsRepo {
  HttpService? _httpService;

  NewsRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService!.init();
  }

  @override
  Future<List<Article>> getNewsHeadline() async {
    List<Article> articles = [];

    try {
      final response =
          await _httpService!.getRequest("v2/top-headlines?country=br");

      final parsedResponse = NewsResponse.fromJson(response.data);

      articles = parsedResponse.articles;

      return articles;
    } on Exception catch (e) {
      print(e);
      return articles;
    }
  }

  @override
  Future<List<Article>> getSearchedNews(String query) async {
    List<Article> articles = [];

    try {
      final response = await _httpService!.getRequest("v2/everything?q=$query");

      final parsedResponse = NewsResponse.fromJson(response.data);

      articles = parsedResponse.articles;

      return articles;
    } on Exception catch (e) {
      print(e);
      return articles;
    }
  }
}
