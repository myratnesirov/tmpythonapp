import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class Video extends StatelessWidget {
  final List<String> at = <String>[
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

  final List<String> link = <String>[
    'M2WjS6y5JBA',
    'jU0O14P0H8k',
    '0GKL1xOc5_s',
    'sfBT2VNkvrY',
    '6XxsfZ_bXw0',
    'rBs2NBbuGLo',
    'kiMxbg1jpzE',
    't9Oe39x79Zk',
    'jfpF2Zq6C38',
    '0Zad6lf-KPg',
    'K3LV5f4CNOA',
    'yuj6DvRUCms',
    'kehgWzXiNoM',
    'xKVMkJgIhws',
    'fe_f8Nyesyc',
    'kO6VlUVJYcA',
    '3TWZpwkAkJ8',
    'db-q8Uy8qTY',
    'nUE_bH1846Y',
    'P6QODIWl9SU',
    'PoAr8l7lndI',
    '6xxkwexF6l8',
    'k7vf4wYYJTY',
    'vIZtMeyj08E',
    'PymYITc2UVk',
    'y7A9tQmrtzQ',
    'JYLOr9f25Kw',
    'PaNNlZrE-ig',
    'dmhPy4aCQBA',
    'DsqVHN1RMJ4',
    'dNnQ4dX4DpE',
    'Y7GXHeWfEvg',
    'JjridE5A0Lo',
    'MOtsxyOeNAk',
    'HOP4HLx8HWs',
    'fuZLi0s_l3Q',
    'Xm2luKXVUa4',
    'ZlGDaNTu0Bc',
    'SLPyemoRpUk',
    '8qaL8EEV4xA',
    'qw3lqUFr3ZM',
    'UEsAere-Isw',
    'hiqCWh7rsqk',
    'snJLjyDrykI',
    'tsvRZmfD0bE',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      title: 'Türkmençe Python',
      home: TodosScreen(
          todos: List.generate(45, (index) => Todo(at[index], link[index]))),
    );
  }
}

class TodosScreen extends StatelessWidget {
  final List<Todo> todos;

  TodosScreen({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('VIDEO SAPAKLAR'),
        ),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blueGrey[800],
            child: ListTile(
              leading: Icon(
                Icons.play_circle_outline,
                color: Colors.white,
              ),
              title: Text(
                todos[index].title,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              // When a user taps the ListTile, navigate to the DetailScreen.
              // Notice that you're not only creating a DetailScreen, you're
              // also passing the current todo through to it.
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                    // Pass the arguments as part of the RouteSettings. The
                    // DetailScreen reads the arguments from these settings.
                    settings: RouteSettings(
                      arguments: todos[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  Widget build(BuildContext context) {
    final Todo todo = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: SafeArea(
              child: YoutubePlayer(
                controller:
                    YoutubePlayerController(initialVideoId: todo.description),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
