import 'package:flutter/material.dart';
import 'package:news_app/models/articlemodel.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewsTile extends StatelessWidget {
  NewsTile({super.key, required this.model});
  final Articles model;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: model.urlToImage != null
                ? CachedNetworkImage(
                    imageUrl: model.urlToImage!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.fill,
                    errorWidget: (context, url, error) {
                      return const Center(child: Text("Loading..."),);
                    },
                    placeholder: (Context, st) {
                      return const Text('');
                    },
                  )
                : Image.asset("assets/sports.avif"),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            model.title!,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            model.description ?? "",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
