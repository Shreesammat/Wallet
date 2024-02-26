import 'package:flutter/material.dart';

class TextH2 extends StatelessWidget {
  const TextH2({super.key, required this.inText});

  final String inText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        textAlign: TextAlign.start,  // did this so that the text of each tile starts from left
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        inText,
      ),
    );
  }
}
