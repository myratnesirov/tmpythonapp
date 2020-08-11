import 'package:flutter/material.dart';
import 'package:tmpythonapp/youtubeplayer.dart';
import 'basSahypa.dart';
import 'videolar.dart';
import 'codeYazgylary.dart';
import 'youtubeplayer.dart';
import 'kodlar.dart';
import 'todovideo.dart';

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
        '/codeyazgylary': (context) => CodeYazgylary(),
        '/0': (context) => V0(),
        '/1': (context) => V1(),
        '/2': (context) => V2(),
        '/3': (context) => V3(),
        '/4': (context) => V4(),
        '/5': (context) => V5(),
        '/6': (context) => V6(),
        '/7': (context) => V7(),
        '/8': (context) => V8(),
        '/9': (context) => V9(),
        '/10': (context) => V10(),
        '/11': (context) => V11(),
        '/12': (context) => V12(),
        '/13': (context) => V13(),
        '/14': (context) => V14(),
        '/15': (context) => V15(),
        '/16': (context) => V16(),
        '/17': (context) => V17(),
        '/18': (context) => V18(),
        '/19': (context) => V19(),
        '/20': (context) => V20(),
        '/21': (context) => V21(),
        '/22': (context) => V22(),
        '/23': (context) => V23(),
        '/24': (context) => V24(),
        '/25': (context) => V25(),
        '/26': (context) => V26(),
        '/27': (context) => V27(),
        '/28': (context) => V28(),
        '/29': (context) => V29(),
        '/30': (context) => V30(),
        '/31': (context) => V31(),
        '/32': (context) => V32(),
        '/33': (context) => V33(),
        '/34': (context) => V34(),
        '/35': (context) => V35(),
        '/36': (context) => V36(),
        '/37': (context) => V37(),
        '/38': (context) => V38(),
        '/39': (context) => V39(),
        '/40': (context) => V40(),
        '/41': (context) => V41(),
        '/42': (context) => V42(),
        '/43': (context) => V43(),
        '/44': (context) => V44(),
        '/k0': (context) => K0(),
        '/k1': (context) => K1(),
        '/k2': (context) => K2(),
        '/k3': (context) => K3(),
        '/k4': (context) => K4(),
        '/k5': (context) => K5(),
        '/k6': (context) => K6(),
        '/k7': (context) => K7(),
        '/k8': (context) => K8(),
        '/k9': (context) => K9(),
        '/k10': (context) => K10(),
      },
    );
  }
}
