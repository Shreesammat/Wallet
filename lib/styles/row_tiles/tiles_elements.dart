import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:text_only/styles/text/text_h1.dart';
import 'package:text_only/styles/text/text_h2.dart';
import 'package:text_only/styles/text/text_money.dart';

class TilesElement extends StatelessWidget {
  const TilesElement({super.key,required this.title,required this.desc,required this.money});

  final String title,desc;
  final double money;

  @override
  Widget build(BuildContext context) {
    return Container(  //* Container for elemental tiles
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),

      alignment: Alignment.centerLeft,
      height: 120,
      decoration: const BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(      //*  Container defining the image on leftmost side
            alignment: Alignment.center,
            margin: const EdgeInsets.all(2),
            padding:const EdgeInsets.all(8),  //have set the margin so that it matches the upper title column
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromARGB(53, 255, 255, 255),
            ),

            child: Image.asset('assets/images/$title.png'),
          ),
          Column(         //* Column containing Text info of the product
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(  //* container containing title of the product
                margin: const EdgeInsets.only(top:10,left:8,right:8,bottom:4),
                padding:const EdgeInsets.symmetric(horizontal: 4),
                
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Color.fromARGB(15, 255, 255, 255),),
                width:120,height:30,
                child: Text(
                  style:const TextStyle(
                    color:Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize:18,
                  ),

                  title),
              ),
              Padding(    //*sizedBox containing basic info about product
                padding: EdgeInsets.symmetric(horizontal: 8,vertical:2),
                child: SizedBox(
                  
                  height:40,width:120,
                  child: Text(
                    style:const TextStyle(
                      fontSize:12,
                      color:Colors.blue,
                      overflow: TextOverflow.ellipsis,
                    ),
                    desc,
                    ),
                ),
              ),
            ],
          ),
          Spacer(),
          TextMoney(money: money),
          

        ],
      ),
      // Container(
      // margin: EdgeInsets.all(16),
      // height: 100,
      // color: Colors.white, // Set the outer container color to white
      // child: Container(
      //   margin: EdgeInsets.all(8), // Optional: Add margin to the inner container for spacing
      //   color: Colors.blue, // Set the inner container color to blue
      // ),
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Container(
      //       margin:EdgeInsets.all(8),
      //       color:Colors.white60,
      //       child:Row(children: [
      //         Container(color: Colors.white12,height:80,width:80)
      //       ],)
      //     ),
      //   ],
      // ),
    );
  }
}
