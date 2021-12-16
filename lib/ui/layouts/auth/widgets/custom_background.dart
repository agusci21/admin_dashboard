import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: _buildBackgroundDecoration(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        constraints: const BoxConstraints(maxWidth: 400),
        child: Center(
          child: Image.asset(
            'assets/twitter-white-logo.png',
            width: 400,
          ),
        ),
      ),
    ));
  }

  BoxDecoration _buildBackgroundDecoration() {
    return const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/twitter-bg.png'), fit: BoxFit.cover));
  }
}
