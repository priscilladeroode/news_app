import 'package:get/get.dart';
import 'package:news_app/core/model/article.dart';
import 'package:news_app/core/repository/news_repo.dart';
import 'package:news_app/core/repository/news_repo_impl.dart';

class NewsHeadlineController extends GetxController {
  NewsRepo? _newsRepo;

  NewsHeadlineController() {
    _newsRepo = Get.find<NewsRepoImpl>();
    loadNewsLine();
  }

  RxList<Article> articles = RxList.empty();

  RxBool isLoading = false.obs;

  loadNewsLine() async {
    showLoading();
    final result = await _newsRepo!.getNewsHeadline();
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
