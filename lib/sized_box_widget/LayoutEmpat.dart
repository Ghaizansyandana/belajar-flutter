import 'package:flutter/material.dart';

class ProfilWidget extends StatelessWidget {
  const ProfilWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Widget"),
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(height: 140, color: Colors.amber),
              const Positioned(
                bottom: -30,
                left: 20,
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: CircleAvatar(backgroundColor: Colors.blue),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ghaizan", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text("XII RPL 3"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(onPressed: () {}, child: const Text("Follow")),
        ],
      ),
    );
  }
}
