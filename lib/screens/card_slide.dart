import 'package:flutter/material.dart';

class CardSlide extends StatelessWidget {
  const CardSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.amber,
                ),
                margin: const EdgeInsets.only(top: 40, left: 30, bottom: 40, right: 20),
                height: 200,
                width: 360,
                alignment: Alignment.center,
                child: const Icon(Icons.money_rounded,size: 80,),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.amber,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                height: 200,
                width: 360,
                alignment: Alignment.center,
                child: const Icon(Icons.money_rounded,size: 80,),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.amber,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                height: 200,
                width: 360,
                alignment: Alignment.center,
                child: const Icon(Icons.money_rounded,size: 80,),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.amber,
                ),
                margin: const EdgeInsets.only(top: 40, right: 30, bottom: 40, left: 20),
                height: 200,
                width: 360,
                alignment: Alignment.center,
                child: const Icon(Icons.money_rounded,size: 80,),
              ),
            ],
          ),
        ),
      )
    ;
  }
}
