import 'package:flutter/material.dart';

class ListBasic extends StatelessWidget {
  const ListBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Basic"),
      ),
      body: ListView(
        children: [
          Container(
            height: 80,
            color: Colors.amber,
            child: const Center(child: Text("Golongan Orang Kaya")),
          ),
          Container(
            height: 80,
            color: Colors.green,
            child: const Center(child: Text("Golongan Rakyat Miskin")),
          ),
          Container(
            height: 80,
            color: Colors.blue,
            child: const Center(child: Text("Golongan Susah")),
          ),
          Container(
            height: 80,
            color: Colors.pink,
            child: const Center(child: Text("Golongan Orang Ripuh Busung Lapar")),
          ),
        ],
      ),
    );
  }
}
