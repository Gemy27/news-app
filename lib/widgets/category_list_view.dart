import 'package:flutter/material.dart';
import 'package:news_app/widgets/customcard.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  static List<Map<String, String>> list = [
    {"text": "business", "image": "assets/business.avif"},
    {"text": "entertainment", "image": "assets/entertaiment.avif"},
    {"text": "general", "image": "assets/general.avif"},
    {"text": "health", "image": "assets/health.avif"},
    {"text": "science", "image": "assets/science.avif"},
    {"text": "sports", "image": "assets/sports.avif"},
    {"text": "technology", "image": "assets/technology.jpeg"},
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: ((context, index) {
          return CustomCard(
            text: list[index]['text']!,
            Imagename: list[index]['image']!,
          );
        }),
      ),
    );
  }
}
