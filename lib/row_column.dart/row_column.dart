import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlutterLogo(
          size: 50, style: FlutterLogoStyle.horizontal,
        ),
        FlutterLogo(
          size: 50, style: FlutterLogoStyle.stacked,
        ),
        FlutterLogo(
          size: 50, textColor: const Color.fromARGB(255, 0, 234, 255),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ini teks column 1"),
            Text("ini teks column 2"),
            Text("ini teks column 3"),
          ],
        ),
        
      ],
    );
  }
}