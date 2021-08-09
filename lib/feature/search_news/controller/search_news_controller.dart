import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/core/model/article.dart';
import 'package:news_app/core/repository/news_repo.dart';
import 'package:news_app/core/repository/news_repo_impl.dart';

class SearchNewsController extends GetxController {
  NewsRepo? _newsRepo;

  SearchNewsController() {
    _newsRepo = Get.find<NewsRepoImpl>();
    searchTextController.addListener(() {
      if (searchTextController.text.length % 3 == 0 &&
          searchTextController.text.length != 0) {
        searchNewsHeadline();
      }
    });
  }

  final searchTextController = TextEditingController();

  RxList<Article> articles = RxList.empty();

  RxBool isLoading = false.obs;

  searchNewsHeadline() async {
    showLoading();
    final result = await _newsRepo!.getSearchedNews(searchTextController.text);
    if (result.isNotEmpty) {
      articles = result.obs;
    } else {
      print("no data");
    }
    hideLoading();
  }

  showLoading() {
    isLoading.toggle();
  }

  hideLoading() {
    isLoading.toggle();
  }
}
