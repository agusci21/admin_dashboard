import 'package:flutter/material.dart';
class LinkText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final TextDecoration? decoration;
  const LinkText(this.text,{Key? key, this.color = Colors.black, this.fontSize = 16, this.decoration }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Text(text, style: TextStyle(color: color, fontSize: fontSize, decoration: decoration ),),
    );
  }
}