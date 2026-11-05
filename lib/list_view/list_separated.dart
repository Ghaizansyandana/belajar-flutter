import 'package:flutter/material.dart';

class ListSeparatedBuilder extends StatelessWidget {
  const ListSeparatedBuilder({super.key});

  final List<String> partai = const ["Golongan Karya", "PDIP", "DEMOKRAT", "PKB"];
  final List<Color> partaiColor = const [Colors.amber, Colors.red, Colors.blue, Colors.green];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Separated"),
      ),
      body: ListView.separated(
        itemCount: partai.length,
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            color: partaiColor[index],
            child: Center(
              child: Text(
                partai[index],
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.black,
            thickness: 3,
            height: 10,
            indent: 50,
            endIndent: 50,
          );
        },
      ),
    );
  }
}
