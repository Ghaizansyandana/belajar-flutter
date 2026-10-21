import 'package:flutter/material.dart';

class Kartu extends StatelessWidget {
  const Kartu({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 20),
        color: Colors.black,
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 15),
              child: Text("Pokemon Go",
              style: TextStyle(color: Colors.amber),
              textAlign: TextAlign.left,
              ),
            ),
            Container(height: 40, width: 520, color: Colors.amber,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Ini Judul",
                style: TextStyle(color: Colors.amber),
                textAlign: TextAlign.left,
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 160, width: 220, color: Colors.amber),
                Container(height: 160, width: 220, color: Colors.amber),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 160, width: 220, color: Colors.amber),
                Container(height: 160, width: 220, color: Colors.amber),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 160, width: 220, color: Colors.amber),
                Container(height: 160, width: 220, color: Colors.amber),
              ],
            )
          ],
        ),
      ),
    );
  }
}