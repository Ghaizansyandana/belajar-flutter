import 'package:flutter/material.dart';

class Stackwidget extends StatelessWidget {
  const Stackwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(width: 100, height: 150, color: Colors.red,),
        Positioned(
          bottom: 0,
          right: 10,
          child: Icon(Icons.favorite, color: Colors.white,) 
        ),
        Positioned(top: 5, left: 10, child: Text("Label")),
        Positioned(
          right: 25,
          top: 25,
          left: 25,
          child: Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
        ),
      ],
    );
  }
}