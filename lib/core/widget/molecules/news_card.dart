import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/core/model/article.dart';
import 'package:news_app/core/widget/atoms/text/text_caption.dart';
import 'package:news_app/core/widget/atoms/text/text_h6.dart';
import 'package:news_app/core/widget/atoms/text/text_subtitle.dart';
import 'package:news_app/core/widget/atoms/text/text_subtitle2.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed("/news_details", arguments: article),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (article.author != null) TextSubtitle2(text: article.author!),
              TextCaption(text: article.publishedAt),
              SizedBox(height: 16),
              if (article.imageUrl != null)
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(article.imageUrl!),
                    ),
                  ),
                ),
              SizedBox(height: 4),
              TextH6(text: article.title!),
              SizedBox(height: 16),
              if (article.description != null)
                TextSubtitle(text: article.description!),
            ],
          ),
        ),
      ),
    );
  }
}
