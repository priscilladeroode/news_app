import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/core/widget/custom_drawer.dart';
import 'package:news_app/feature/search_news/controller/search_news_controller.dart';

class SearchNewsView extends StatelessWidget {
  const SearchNewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SearchNewsController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Search News"),
      ),
      drawer: getDrawer(),
      body: Column(
        children: [
          TextField(
            controller: controller.searchTextController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
            ),
          ),
          Expanded(
            child: Obx(
              () {
                return controller.isLoading.isTrue
                    ? Center(child: CircularProgressIndicator())
                    : controller.articles.isEmpty
                        ? Center(
                            child: Text("No news found"),
                          )
                        : Container(
                            margin: const EdgeInsets.all(10),
                            child: ListView.separated(
                              itemBuilder: (context, index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (controller.articles[index].imageUrl !=
                                        null)
                                      Image.network(
                                          controller.articles[index].imageUrl!),
                                    SizedBox(height: 4),
                                    Text(controller.articles[index].title!),
                                    SizedBox(height: 4),
                                    Text(controller
                                        .articles[index].description!),
                                  ],
                                );
                              },
                              separatorBuilder: (context, index) => Divider(),
                              itemCount: controller.articles.length,
                            ),
                          );
              },
            ),
          ),
        ],
      ),
    );
  }
}
