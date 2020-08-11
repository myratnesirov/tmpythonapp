import 'package:flutter/material.dart';

class TitleIcon extends StatelessWidget {
  TitleIcon({this.icon, this.label, this.style, this.color});

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
          size: 60,
          color: color,
        ),
        SizedBox(
          width: 8.0,
        ),
        Text(
          label,
          style: style,
        ),
      ],
    );
  }
}
