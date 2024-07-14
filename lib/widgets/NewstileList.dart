import 'package:flutter/material.dart';
import 'package:news_app/models/articlemodel.dart';
import 'package:news_app/widgets/NewsTile.dart';

class NewsTileList extends StatelessWidget {
  const NewsTileList({required this.model, super.key});
  final List<Articles> model;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: NewsTile(model: model[index]),
          );
        },
        childCount: model.length,
      ),
    );
  }
}
