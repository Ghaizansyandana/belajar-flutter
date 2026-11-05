import 'package:flutter/material.dart';

class MyGridBuildergw extends StatelessWidget {
  MyGridBuildergw({super.key});

  final List<Map<String, dynamic>> produk = [
    {
      'nama': "Laptop",
      'harga': 7500000,
      'Icons': Icons.laptop,
      'warna': Colors.blue,
    },
    {
      'nama': "Smartphone",
      'harga': 2500000,
      'Icons': Icons.phone_android,
      'warna': Colors.green,
    },
    {
      'nama': "Headphone",
      'harga': 150000,
      'Icons': Icons.headphones,
      'warna': Colors.orange,
    },
    {
      'nama': "Keyboard",
      'harga': 375000,
      'Icons': Icons.keyboard,
      'warna': Colors.purple,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid Builder"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: produk.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          final data = produk[index];

          return Card(
            elevation: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(data['Icons'], size: 60, color: data['warna']),
                const SizedBox(height: 10),
                Text(
                  data['nama'],
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text("Rp. ${data['harga']}"),
              ],
            ),
          );
        },
      ),
    );
  }
}
