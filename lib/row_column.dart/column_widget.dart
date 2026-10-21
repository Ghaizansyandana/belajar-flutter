import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FlutterLogo(
          size: 50, style: FlutterLogoStyle.horizontal,
        ),
        FlutterLogo(
          size: 50, style: FlutterLogoStyle.stacked,
        ),
        FlutterLogo(
          size: 50, textColor: const Color.fromARGB(255, 0, 234, 255),
        )
      ],
    );
  }
}