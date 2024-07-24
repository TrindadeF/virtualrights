import 'package:flutter/material.dart';
import '../models/article.dart';

class HateSpeechScreen extends StatelessWidget {
  final List<Article> articles = [
    Article(
      title: 'O Impacto do Discurso de Ódio Online',
      content: 'Conteúdo sobre o impacto do discurso de ódio online...',
      category: 'Discurso de Ódio Online',
    ),
    // Adicione mais artigos conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discurso de Ódio Online'),
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
