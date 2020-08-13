import 'package:flutter/material.dart';
import 'basSahypa.dart';
import 'todovideo.dart';
import 'todokodlar.dart';

void main() {
  runApp(TurkmencePython());
}

class TurkmencePython extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => BasSahypa(),
        '/videolar': (context) => Video(),
        '/codeyazgylary': (context) => Kod(),
      },
    );
  }
}
