import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title: Text("Aplikasi Orang Madep", 
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.red,
            fontStyle: FontStyle.italic, 
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Text("udah siap belom", 
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.red,
            fontStyle: FontStyle.italic, 
            ),
          ),
        ),
      ),
    );
  }
}