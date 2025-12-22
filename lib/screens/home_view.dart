import 'package:coody/componuntes/category_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Row(
           mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "News",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
              " Cloud",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
                          )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              CategoryCard()
            ],
          )
        ],
      ),
    );
  }
}
