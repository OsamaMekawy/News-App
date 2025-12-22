import 'package:coody/componuntes/category_card.dart';
import 'package:coody/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoriesListView extends StatelessWidget {
   CategoriesListView({
    super.key,
  });
 final List<CategoryModel> categories = 
 [
  CategoryModel(image: 'assets/road.png', categoryName: "sports"),
  CategoryModel(image: 'assets/road.png', categoryName: "Entertamednt"),
  CategoryModel(image: 'assets/road.png', categoryName: "Busniess"),
  CategoryModel(image: 'assets/road.png', categoryName: "Medecine"),
  CategoryModel(image: 'assets/road.png', categoryName: "Foods"),
  CategoryModel(image: 'assets/road.png', categoryName: "Advertising"),
  CategoryModel(image: 'assets/road.png', categoryName: "sports"),
  CategoryModel(image: 'assets/road.png', categoryName: "sports"),
  CategoryModel(image: 'assets/road.png', categoryName: "sports"),
  CategoryModel(image: 'assets/road.png', categoryName: "sports"),

 ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder:(context,index) {
        return  CategoryCard(category: categories[index]);
        } 
        ),
    );
  }
}