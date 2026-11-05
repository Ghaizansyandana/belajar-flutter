import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Widget"),
      ),
      body: Row(
        children: [
          Container(width: 50, color: Colors.amber),
          Expanded(
            child: Container(
              height: 70,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Expanded(flex: 1, child: Container(height: 50, color: Colors.red)),
          Expanded(
            flex: 1,
            child: Container(
              height: 50,
              color: const Color.fromARGB(255, 80, 252, 0),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 50,
              color: Colors.amber,
              alignment: Alignment.center,
              child: const Text("tag"),
            ),
          ),
        ],
      ),
    );
  }
}
