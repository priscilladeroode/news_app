import 'package:flutter/material.dart';
import 'package:news_app/core/model/article.dart';
import 'package:news_app/core/theme/app_colors.dart';
import 'package:news_app/core/widget/atoms/text/text_body.dart';
import 'package:news_app/core/widget/atoms/text/text_h6.dart';
import 'package:news_app/core/widget/atoms/text/text_subtitle.dart';

class NewsDetailsView extends StatelessWidget {
  final Article article;
  const NewsDetailsView({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: AppColors.dark),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  article.imageUrl!,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextH6(text: article.title!),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextSubtitle(text: article.description!),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextBody(text: article.content!),
          )
        ],
      ),
    );
  }
}
