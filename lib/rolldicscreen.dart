import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

@override
class _RollDiceScreenState extends State<RollDiceScreen> {
  int imageNumber = 1;
  generateRandomNumber() {
    setState(() {
      imageNumber =
          Random().nextInt(6) + 1; // Generates a number between 1 and 6
      // Generates a number between 1 and 6
      // You can add logic here to handle the dice roll
    });
    print(imageNumber); // Generates a number between 1 and 6
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sarfaraj' ,),
        backgroundColor: const Color.fromARGB(255, 236, 178, 19),
        centerTitle: true,
        
        
      ),
      backgroundColor: const Color.fromARGB(255, 240, 22, 106),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/dice-$imageNumber.png',
              width: 200,
              height: 200,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: generateRandomNumber,

            child:  Text(
              'Roll Dice',style: GoogleFonts.sacramento(),
            ),
          ),
          Text('Made by:\n Sarfaraj Ahmad',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
               const SizedBox(height: 20,),
               Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                ),


                 child: ClipOval(
                 
                 
                 child:Image.asset(
                  'assets/images/sarfaraj.jpeg',
                  width: 80,
                  height: 80,
                 )
                 ),
              ),
        ],
      ),
    );
  }
}
