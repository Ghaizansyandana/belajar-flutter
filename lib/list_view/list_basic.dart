import 'package:flutter/material.dart';

class ListBasic extends StatelessWidget {
  const ListBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: 100,
          color: Colors.amber,
          child: Center(child: Text("Golongan Orang Kaya")),
        ),
        Container(
          width: 100,
          color: Colors.green,
          child: Center(child: Text("Golongan Rakyat Miskin")),
        ),
        Container(
          width: 100,
          color: Colors.blue,
          child: Center(child: Text("Golongan Susah")),
        ),
        Container(
          width: 100,
          color: Colors.pink,
          child: Center(child: Text("Golongan Orang Ripuh Busung Lapar")),
        ),
      ],
    );
  }
}