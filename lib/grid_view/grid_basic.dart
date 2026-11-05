import 'package:flutter/material.dart';

class MyGridGw extends StatelessWidget {
  const MyGridGw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid Basic"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.6,
        ),
        children: const <Widget>[
          ColoredBox(
            color: Colors.amber,
            child: FlutterLogo(
              size: 64,
              style: FlutterLogoStyle.markOnly,
              textColor: Colors.green,
            ),
          ),
          ColoredBox(
            color: Colors.amber,
            child: FlutterLogo(
              size: 64,
              style: FlutterLogoStyle.stacked,
              textColor: Colors.green,
            ),
          ),
          ColoredBox(
            color: Colors.amber,
            child: FlutterLogo(
              size: 64,
              style: FlutterLogoStyle.horizontal,
              textColor: Colors.green,
            ),
          ),
          ColoredBox(
            color: Colors.amber,
            child: FlutterLogo(
              size: 64,
              style: FlutterLogoStyle.markOnly,
              textColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
