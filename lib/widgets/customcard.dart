import 'package:flutter/material.dart';
import 'package:news_app/screens/categoryView.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({required this.text,required this.Imagename,super.key});
  final String Imagename;
  final String text; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: ((context) => CategoryView(category: text,))));
      },
      child: Container(
        margin: EdgeInsets.all(2),
          alignment: Alignment.center,
          width: 160,
          decoration: BoxDecoration(
            image:  DecorationImage(
                image: AssetImage(
                  Imagename,
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(12),
          ),
          child:  Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
    );
  }
}