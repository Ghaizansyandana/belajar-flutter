import 'package:flutter/material.dart';

class ListSeparatedBuilder extends StatelessWidget {
  ListSeparatedBuilder({super.key});

  @override
  var partai = ["Goongan Karya", "PDIP", "DEMOKRAT", "PKB"];
  var partaiColor = [Colors.amber, Colors.red, Colors.blue, Colors.green];

  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: partai.length,
      itemBuilder: (context, index) {
        return Container(
          height: 400,
          color: partaiColor[index],
          child: Center(child: Text(partai[index].toString())),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.black,
          height: 10,
          radius: BorderRadius.circular(12),
          indent: 90,
          endIndent: 90,
        );
      },
    );
  }
}
