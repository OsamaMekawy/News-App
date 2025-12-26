import 'package:coody/componuntes/news_list_view.dart';
import 'package:coody/models/articals_model.dart';
import 'package:coody/servies/news_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(Dio()).getNews();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
     builder: (context,snapshot){
        if (snapshot.hasData) {
            return NewsListView(
              articals: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: ErorrMessage(),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
      });
  
  }
}

class ErorrMessage extends StatelessWidget {
  const ErorrMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('oops  was an error, try later');
  }
}