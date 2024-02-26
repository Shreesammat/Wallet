import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextMoney extends StatelessWidget {
  const TextMoney({super.key, required this.money});

  final double money;

  @override
  Widget build(BuildContext context){
    return Text(
      textAlign: TextAlign.right,
      style: GoogleFonts.courierPrime(
        color:Color(0xFF0F9D58),
        fontWeight:FontWeight.w600,
        fontSize:20,
      ),
      '\$$money',
    );
  }
}