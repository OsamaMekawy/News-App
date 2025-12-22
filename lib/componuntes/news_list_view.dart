import 'package:coody/componuntes/news_tile.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
     itemCount: 10,
     itemBuilder: (context,index){
       return Padding(
         padding: const EdgeInsets.only(bottom: 20.0),
         child: NewsTile(),
       );
     }
    );
  }
}