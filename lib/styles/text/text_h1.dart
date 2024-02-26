import 'package:flutter/material.dart';

class TextH1 extends StatelessWidget {
  const TextH1({super.key,required this.inText});

  final String inText;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Text(
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          inText),
    );
  }
}
