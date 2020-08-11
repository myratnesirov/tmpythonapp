import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      title: 'Türkmençe Python',
      home: TodosScreen(todos: [
        Todo(
          'Giriş 1',
          'M2WjS6y5JBA',
        ),
        Todo(
          'Giriş 2',
          'jU0O14P0H8k',
        ),
      ]),
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
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: YoutubePlayer(
              controller:
              YoutubePlayerController(initialVideoId: todo.description),
            ),
          ),
        ],
      ),
    );
  }
}
