import 'package:coody/componuntes/news_tile.dart';
import 'package:coody/models/articals_model.dart';

import 'package:flutter/material.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel>articals ;
  const NewsListView({super.key,required this.articals});

  @override
  Widget build(BuildContext context) {
    return  SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articals.length, (
              context,
              index,
            ) {
              return NewsTile(articleModel: articals[index]);
            }),
          );
  }
}
