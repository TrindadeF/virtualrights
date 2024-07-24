import 'package:flutter/material.dart';
import '../models/article.dart';

class PrivacyViolationsScreen extends StatelessWidget {
  final List<Article> articles = [
    Article(
      title: 'Privacidade Violada',
      content: 'Conteúdo sobre privacidade violada...',
      category: 'Violação de Privacidade',
    ),
    // Adicione mais artigos conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Violação de Privacidade'),
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
