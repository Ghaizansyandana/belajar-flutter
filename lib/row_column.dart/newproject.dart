import 'package:flutter/material.dart';

class Kartu extends StatelessWidget {
  const Kartu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Kartu"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 20),
            color: Colors.black,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 15),
                  child: const Text(
                    "Pokemon Go",
                    style: TextStyle(color: Colors.amber),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 10),
                Container(height: 40, width: 520, color: Colors.amber),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 16),
                  child: const Text(
                    "Ini Judul",
                    style: TextStyle(color: Colors.amber),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(height: 160, width: 140, color: Colors.amber),
                    Container(height: 160, width: 140, color: Colors.amber),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(height: 160, width: 140, color: Colors.amber),
                    Container(height: 160, width: 140, color: Colors.amber),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(height: 160, width: 140, color: Colors.amber),
                    Container(height: 160, width: 140, color: Colors.amber),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
