import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label, this.style, this.color});

  final IconData icon;
  final String label;
  final TextStyle style;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 30,
          color: color,
        ),
        SizedBox(
          width: 15.0,
        ),
        Text(
          label,
          style: style,
        ),
      ],
    );
  }
}
