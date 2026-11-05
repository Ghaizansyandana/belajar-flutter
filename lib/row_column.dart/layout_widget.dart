import 'package:flutter/material.dart';

class LayoutRowColumn extends StatelessWidget {
  const LayoutRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Widget"),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 100,
          color: Colors.grey,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.call, size: 48), Text("Call")],
              ),
              SizedBox(width: 24),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.near_me, size: 48), Text("Route")],
              ),
              SizedBox(width: 24),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.share, size: 48), Text("Share")],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
