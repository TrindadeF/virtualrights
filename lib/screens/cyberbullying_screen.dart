import 'package:flutter/material.dart';
import '../models/article.dart';

class CyberbullyingScreen extends StatelessWidget {
  final List<Article> articles = [
    Article(
      title: 'Cyberbullying e Suas Consequências',
      content: 'Conteúdo sobre cyberbullying e suas consequências...',
      category: 'Cyberbullying e Assédio Online',
    ),
    // Adicione mais artigos conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cyberbullying e Assédio Online'),
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
