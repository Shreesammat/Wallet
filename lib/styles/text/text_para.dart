import 'package:flutter/material.dart';

class TextH1 extends StatelessWidget {
  const TextH1({super.key, required this.inText});

  final String inText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w200,
        ),
        inText,
      ),
    );
  }
}