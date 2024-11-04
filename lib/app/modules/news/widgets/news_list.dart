import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movies/app/modules/news/controllers/news_controller.dart';

import 'widgets.dart';

class NewsList extends StatelessWidget {
  final NewsController controller;
  const NewsList({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      if (controller.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return ListView.builder(
          itemCount: controller.newsList.length,
          itemBuilder: (context, index) {
            final news = controller.newsList[index];
            return NewsComponents(
              title: news.title ?? '',
              image: news.image ?? '',
              description: news.description ?? '',
              date: news.date ?? '',
              reference: news.reference ?? '',
            );
          });
    });
  }
}
