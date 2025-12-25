import 'package:coody/componuntes/news_tile.dart';
import 'package:coody/models/articals_model.dart';
import 'package:coody/servies/news_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  @override
  List<ArticleModel> articals = [];
  void initState() async {
    super.initState();
    articals = await NewsService(Dio()).getNews();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articals.length,
        (context, index) {
        return NewsTile(articleModel: articals[index],);
      }),
    );
  }
}
