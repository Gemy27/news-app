import 'package:flutter/material.dart';
import 'package:news_app/widgets/NewstileListBuilder.dart';
import 'package:news_app/widgets/category_list_view.dart';
class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text("Cloud",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      body:CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CategoryListView()),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
           NewstilelistBuilder(category: "general",),
        ],
      ),
    );
  }
}

// CustomCard(text: "Business",Imagename: "assets/business.avif")