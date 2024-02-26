import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:text_only/screens/card_slide.dart';
import 'package:text_only/styles/row_tiles/tiles_elements.dart';
import 'package:text_only/styles/row_tiles/tiles_h2.dart';
import 'package:text_only/styles/text/text_h1.dart';
import 'package:text_only/styles/text/text_h2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        //app bar
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text('WALLET'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          toolbarHeight: 80,
        ),

        //drawer
        drawer: Drawer(
          elevation: 0,
          width: 300,
          shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero)),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: const [],
          ),
        ),
        backgroundColor: Colors.grey[850],

        //navigation bar

        //code body
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextH1(inText: 'Hello Abhiland'),
              const TextH2(inText: 'Good evening'),
              const CardSlide(),
              const TilesH2(),
              Container(  //* Container of all the elemental tiles
                height: 380,
                width: double.maxFinite,
                margin: const EdgeInsets.symmetric(horizontal: 16,vertical:16),
                decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(16),color:const Color.fromARGB(5, 255, 255, 255)),
                  
                child: ListView(
                  children: const [
                    TilesElement(title:'Drink',desc:'I had some drink in the club',money:250,),
                    TilesElement(title:'Electronics',desc:'macbook on virtualbox',money:1999.99,),
                    TilesElement(title:'Pet',desc:'bought foods for Lavneesh',money:10,),
                    TilesElement(title:'Travel',desc:'went to Gate 3',money:120,),
                    TilesElement(title:'Food',desc:'give me some maggie',money:14,),
                    TilesElement(title:'Gym',desc:'Adi wasted money',money:3000,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
