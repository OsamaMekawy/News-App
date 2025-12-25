import 'package:coody/screens/home_view.dart';
import 'package:coody/servies/news_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
 // NewsService(Dio()).getNews();
  runApp(NewsApp());
  
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView()
    );
  }
}
