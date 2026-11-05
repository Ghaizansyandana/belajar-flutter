import 'package:flutter/material.dart';

class Stackwidget extends StatelessWidget {
  const Stackwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widget"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(width: 200, height: 250, color: Colors.red),
            const Positioned(
              bottom: 10,
              right: 10,
              child: Icon(Icons.favorite, color: Colors.white, size: 30),
            ),
            const Positioned(
              top: 10,
              left: 10,
              child: Text(
                "Label",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              right: 35,
              top: 45,
              left: 35,
              child: Container(
                color: Colors.blue,
                width: 130,
                height: 130,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
