import 'package:flutter/material.dart';

class LinkText extends StatefulWidget {
  final String text;
  final Color color;
  final double fontSize;
  final TextDecoration? decoration;
  final Function()? onPressed;
  const LinkText(this.text,
      {Key? key,
      this.color = Colors.black,
      this.fontSize = 16,
      this.decoration,
      this.onPressed})
      : super(key: key);

  @override
  State<LinkText> createState() => _LinkTextState();
}

class _LinkTextState extends State<LinkText> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) {
          setState(() {
            isHover = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHover = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            widget.text,
            style: TextStyle(
                color: widget.color,
                fontSize: isHover ? widget.fontSize + 2 : widget.fontSize,
                decoration: isHover ? widget.decoration : TextDecoration.none),
          ),
        ),
      ),
    );
  }
}
