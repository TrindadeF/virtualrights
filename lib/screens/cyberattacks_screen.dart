import 'package:flutter/material.dart';
import '../models/article.dart';

class CyberattacksScreen extends StatelessWidget {
  final List<Article> articles = [
    Article(
      title: 'O que são Ciberataques?',
      content: 'Conteúdo sobre ciberataques...',
      category: 'Ciberataque',
    ),
    // Adicione mais artigos conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ciberataque'),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(articles[index].title),
            subtitle: Text(articles[index].content),
          );
        },
      ),
    );
  }
}
