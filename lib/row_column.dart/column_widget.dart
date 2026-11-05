import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column Widget"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlutterLogo(
              size: 50,
              style: FlutterLogoStyle.horizontal,
            ),
            FlutterLogo(
              size: 50,
              style: FlutterLogoStyle.stacked,
            ),
            FlutterLogo(
              size: 50,
              textColor: Color.fromARGB(255, 0, 234, 255),
            ),
          ],
        ),
      ),
    );
  }
}
