// main.dart

import 'package:flutter/material.dart';
import 'package:flutter_gojin_rpl3/container_widget/latihan_container.dart';
import 'package:flutter_gojin_rpl3/row_column.dart/column_widget.dart';
import 'package:flutter_gojin_rpl3/row_column.dart/layout_widget.dart';
import 'package:flutter_gojin_rpl3/row_column.dart/newproject.dart';
import 'package:flutter_gojin_rpl3/row_column.dart/row_column.dart';
import 'package:flutter_gojin_rpl3/row_column.dart/row_widget.dart';

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
          title: Text("Brewek Kartu Pokemon", 
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 24,
            fontWeight: FontWeight.bold,
            backgroundColor: const Color.fromARGB(255, 255, 174, 0),
            fontStyle: FontStyle.italic, 
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 3, 2, 2),

        ),
        body: Kartu(),
      ),
    );
  }
}

class HelloWidget extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("udah siap belom", 
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        backgroundColor: Colors.red,
        fontStyle: FontStyle.italic, 
        ),
      ),
    );
  }
}