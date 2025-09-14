import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sarfaraj'),
          centerTitle: true,
          backgroundColor: Colors.amber,

        ),
        body: GridView.count(crossAxisCount:5,//ye automatic 3 column me divide krega without any size
        crossAxisSpacing: 11,
        mainAxisSpacing: 11,
        children: [
          Container(color:Colors.red),
          Container(color:const Color.fromARGB(255, 45, 185, 167)),
          Container(color:const Color.fromARGB(255, 213, 231, 48)),
          Container(color:const Color.fromARGB(255, 209, 27, 139)),
          Container(color:const Color.fromARGB(255, 26, 24, 24)),
          Container(color:const Color.fromARGB(255, 12, 211, 88)),
          Container(color:const Color.fromARGB(255, 199, 188, 187)),
          Container(color:const Color.fromARGB(255, 60, 9, 155)),
          Container(color:const Color.fromARGB(255, 120, 165, 14)),
        ],
        )
      ),
    ),
  );
}

