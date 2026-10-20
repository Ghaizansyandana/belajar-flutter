import 'package:flutter/material.dart';

class LatihanContainer extends StatelessWidget {
  const LatihanContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 420,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 20),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          // color: const Color.fromARGB(255, 146, 146, 146),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Color.fromARGB(255, 59, 59, 59), width: 2),
          image: DecorationImage(
            image: NetworkImage(
              "https://awsimages.detik.net.id/community/media/visual/2026/10/08/serunya-koleksi-kartu-pokemon-1791441571055.jpeg?w=700&q=90",
            ),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),

        // transform: Matrix4.rotationZ(0.1),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            "Serunya Koleksi Kartu Pokemon, Ada Mega Dragonite ex hingga Rarity Baru",                  
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: const Color.fromARGB(255, 0, 132, 255),
              backgroundColor: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
