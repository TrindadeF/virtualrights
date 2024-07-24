import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'privacy_violations_screen.dart';
import 'cyberbullying_screen.dart';
import 'cyberattacks_screen.dart';
import 'hate_speech_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog sobre Direitos Humanos Digitais'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: <Widget>[
          _buildListTile(
            context,
            'Violação de Privacidade',
            FontAwesome.lock,
            Colors.red,
            PrivacyViolationsScreen(),
          ),
          _buildListTile(
            context,
            'Cyberbullying e Assédio Online',
            FontAwesome.exclamation_triangle,
            Colors.orange,
            CyberbullyingScreen(),
          ),
          _buildListTile(
            context,
            'Ciberataque',
            FontAwesome.shield,
            Colors.blue,
            CyberattacksScreen(),
          ),
          _buildListTile(
            context,
            'Discurso de Ódio Online',
            FontAwesome.comments,
            Colors.green,
            HateSpeechScreen(),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(BuildContext context, String title, IconData icon, Color color, Widget screen) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Icon(icon, color: color, size: 40),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
      ),
    );
  }
}
