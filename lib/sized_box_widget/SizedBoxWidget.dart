import 'package:flutter/material.dart';

class Sizedboxwidget extends StatelessWidget {
  const Sizedboxwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SizedBox Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Baris 1"),
            const SizedBox(height: 20),
            const Text("Baris 2"),
            const SizedBox(height: 20),
            SizedBox(
              width: 250,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Tombol"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
