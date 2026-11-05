import 'package:flutter/material.dart';

class KartuProfil extends StatelessWidget {
  const KartuProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kartu Profil"),
      ),
      body: Center(
        child: Container(
          height: 84,
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 6)],
          ),
          child: const Row(
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://cdn-images.dzcdn.net/images/cover/c03eabb7048aa0d70bb83d0382b80bef/0x1900-000000-80-0-0.jpg",
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Ghaizan Aulia", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text("XII RPL 3"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
