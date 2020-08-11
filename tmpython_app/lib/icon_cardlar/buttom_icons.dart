import 'package:flutter/material.dart';

class ButtomIcon extends StatelessWidget {
  ButtomIcon({this.icon, this.color, this.onPress});

  final IconData icon;
  final Color color;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: onPress,
          child: Icon(
            icon,
            size: 25,
            color: color,
          ),
        ),
      ],
    );
  }
}
