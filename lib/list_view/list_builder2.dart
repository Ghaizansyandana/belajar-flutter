import 'package:flutter/material.dart';

class ListBuilder2 extends StatelessWidget {
  ListBuilder2({super.key});

  final List<Map<String, dynamic>> siswa = [
    {'nama': 'abdul', 'kelas': 'XII RPL 3', 'umur': 18},
    {'nama': 'ab', 'kelas': 'XII RPL 3', 'umur': 13},
    {'nama': 'ul', 'kelas': 'XII RPL 3', 'umur': 15},
    {'nama': 'al', 'kelas': 'XII RPL 3', 'umur': 12},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: siswa.length,
      itemBuilder: (context, index) {
        final data = siswa[index];
        return Card(
          margin: EdgeInsets.all(8),
          child: ListTile(
            leading: CircleAvatar(child: Text(data['nama'][0])),
            title: Text("${data['nama']}"),
            subtitle: Text(
              "${data['kelas']} - ${data['umur'].toString()} Tahun",
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        );
      },
    );
  }
}
