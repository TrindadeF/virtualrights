import 'package:flutter/material.dart';
import '../models/article.dart';

class ArticleCard extends StatelessWidget {
  final Article article;

  ArticleCard({required this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(article.title),
        subtitle: Text(article.content),
      ),
    );
  }
}
