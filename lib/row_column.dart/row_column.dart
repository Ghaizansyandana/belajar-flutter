import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row & Column Widget"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(
              size: 50,
              style: FlutterLogoStyle.horizontal,
            ),
            const FlutterLogo(
              size: 50,
              style: FlutterLogoStyle.stacked,
            ),
            const FlutterLogo(
              size: 50,
              textColor: Color.fromARGB(255, 0, 234, 255),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FlutterLogo(size: 50),
                FlutterLogo(size: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
