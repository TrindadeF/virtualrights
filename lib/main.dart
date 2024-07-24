import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog sobre Direitos Humanos Digitais',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.amber,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black, fontSize: 18),
          bodyText2: TextStyle(color: Colors.black, fontSize: 16),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.deepPurple,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
