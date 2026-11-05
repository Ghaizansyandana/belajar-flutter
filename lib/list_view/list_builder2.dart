import 'package:flutter/material.dart';

class ListBuilder2 extends StatelessWidget {
  const ListBuilder2({super.key});

  final List<Map<String, dynamic>> siswa = const [
    {'nama': 'Abdul', 'kelas': 'XII RPL 3', 'umur': 18},
    {'nama': 'Ab', 'kelas': 'XII RPL 3', 'umur': 13},
    {'nama': 'Ul', 'kelas': 'XII RPL 3', 'umur': 15},
    {'nama': 'Al', 'kelas': 'XII RPL 3', 'umur': 12},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Builder Siswa"),
      ),
      body: ListView.builder(
        itemCount: siswa.length,
        itemBuilder: (context, index) {
          final data = siswa[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              leading: CircleAvatar(child: Text(data['nama'][0])),
              title: Text("${data['nama']}"),
              subtitle: Text(
                "${data['kelas']} - ${data['umur']} Tahun",
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}
