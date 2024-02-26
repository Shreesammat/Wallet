import 'package:flutter/material.dart';
import 'package:text_only/styles/text/text_h2.dart';

class TilesH2 extends StatelessWidget {
  const TilesH2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  TextH2(inText: 'Overview'),
                  TextH2(inText: 'Today'),
                  
                ],
              ),
            );
  }
}