import 'package:flutter/material.dart';

class CodeYazgylary extends StatelessWidget {
  final List<String> atlary = <String>[
    '1 Duşman vs Oýunçy',
    '2 Hereketli Ýazgy',
    '3 Kalkulýator Ýazmak',
    '4 Kafe Kassa',
    '5 Kitaphana',
    '6 Kontakt',
    '7 Funksiýa args',
    '8 Class I',
    '9 Sapaklaryň Ýetişigi',
    '10 Hasaplama Ulgamy',
    '11 Funksiýanyň Grafigi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('CODE ÝAZGYLARY'),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.limeAccent,
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/k$index');
                },
                child: Text(
                  '${atlary[index]}',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: atlary.length,
      ),
    );
  }
}
