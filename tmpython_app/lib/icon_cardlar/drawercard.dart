import 'package:flutter/material.dart';

class DrawerCard extends StatelessWidget {
  DrawerCard({@required this.text, this.onTap});

  String text;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        title: Center(
            child: Text(text,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold))),
        onTap: onTap,
      ),
    );
  }
}
