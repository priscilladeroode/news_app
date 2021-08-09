import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/core/theme/app_colors.dart';
import 'package:news_app/core/widget/atoms/text/text_h4.dart';
import 'package:news_app/core/widget/custom_drawer.dart';
import 'package:news_app/core/widget/molecules/news_card.dart';
import 'package:news_app/feature/news_headline/controller/news_headline_controller.dart';

class NewsHeadlineView extends StatelessWidget {
  const NewsHeadlineView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NewsHeadlineController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: AppColors.dark),
      ),
      drawer: getDrawer(),
      body: Obx(() {
        return controller.isLoading.isTrue
            ? Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: TextH4(text: "News"),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      child: ListView.builder(
                        padding: const EdgeInsets.all(16),
                        itemCount: controller.articles.length,
                        itemBuilder: (context, index) {
                          return NewsCard(article: controller.articles[index]);
                        },
                      ),
                    ),
                  ),
                ],
              );
      }),
    );
  }
}
