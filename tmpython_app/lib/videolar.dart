import 'package:flutter/material.dart';

class Videolar extends StatelessWidget {
  Videolar({this.index});
  final int index;

  final List<String> atlary = <String>[
    '1 Giriş',
    '2 Giriş II',
    '3 Python Gurnamak',
    '4 Jupyter Notebook',
    '5 PyCharm Gurnamak',
    '6 Python Iňlisçesi',
    '7 Print',
    '8 Data Types',
    '9 Arifmetika I',
    '10 Arifmetika II',
    '11 Input',
    '12 Kalkulýator Ýazmak',
    '13 If',
    '14 Else',
    '15 Elif',
    '16 While',
    '17 Kalkulýator II',
    '18 Funksiýalara Giriş',
    '19 Return',
    '20 Üçburçlygy Barlamak I',
    '21 Üçburçlygy Barlamak II',
    '22 List I',
    '23 List II',
    '24 Index',
    '25 Append/Remove',
    '26 Tuple/For',
    '27 Format',
    '28 Dictionary',
    '29 Kitaphana I',
    '30 Kitaphana II',
    '31 Maslahatlar',
    '32 Listler Täze',
    '33 Sözlükler',
    '34 Şahsy Maglumatlar',
    '35 Funksiýalar',
    '36 Randint',
    '37 Class I',
    '38 Class II',
    '39 Tkinter',
    '40 Bank/ATM Ulgamy',
    '41 Kalkulýator Tkinter',
    '42 Duşman vs Oýunçy',
    '43 Hereketli Ýazgy',
    '44 Sapaklaryň Ýetişigi',
    '45 Hasaplama Ulgamy',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('VIDEO SAPAKLAR'),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/$index');
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
