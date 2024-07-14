import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articlemodel.dart';
import 'package:news_app/services/Get_News.dart';
import 'package:news_app/widgets/NewstileList.dart';

// import '../models/articlemodel.dart';

class NewstilelistBuilder extends StatefulWidget {
  const NewstilelistBuilder({super.key,required this.category});
  final String category;

  @override
  State<NewstilelistBuilder> createState() => _NewstilelistBuilderState();
}

class _NewstilelistBuilderState extends State<NewstilelistBuilder> {
  // bool isloading = true;
  var future;
  void initState() {
    super.initState();
    future = GetNews(Dio()).getnews(category:widget.category);
    // getgeneralnews();
  }

  // List<Articles> model = [];
  // getgeneralnews() async {
  //   model = await GetNews(Dio()).getnews();
  //   setState(() {});
  //   isloading = false;
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articles>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsTileList(model: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text("There is an Error..."),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              ),
            );
          }
        });

    // return isloading
    //     ? const SliverToBoxAdapter(
    //         child: Center(
    //           child: CircularProgressIndicator(
    //             color: Colors.blue,
    //           ),
    //         ),
    //       )
    //     : model.isNotEmpty
    //         ? NewsTileList(model: model)
    //         : const SliverToBoxAdapter(
    //             child: Text("There is an Error"),
    //           );
  }
}
