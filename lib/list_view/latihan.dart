import 'package:flutter/material.dart';

class MyWidgetGw extends StatelessWidget {
  const MyWidgetGw({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> galleryData = [
      {
        'title': 'Heavy Metal',
        'desc': 'Heavy metal adalah subgenre musik rock yang mengandalkan distorsi gitar tebal, riff cadas, dan ritme cepat yang siap bikin kepala pusing.',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS39PqlGxOULdnhTLN0sisc5MIRIJRQWw2a1Nw_ODHJgQ&s=10',
      },
      {
        'title': 'Thrash Metal',
        'desc': 'Genre yang super agresif dan bertempo cepat, dipelopori sama band legendaris kayak Metallica, Megadeth, dan Slayer.',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShzuWfsKD5X6WkBXuP0bJEYVr28Hbau3888uS0D8pB-w&s=10',
      },
      {
        'title': 'Death Metal',
        'desc': 'Dikenal dengan vokal growl yang berat, tempo drum super kencang, dan lirik tema gelap yang gak cocok buat telinga sensitif.',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ11I6AYjEcVt7_mhWJ3Qcnz45hm5qv4OM1l9YGZIvHmg&s=10',
      },
      {
        'title': 'Power Metal',
        'desc': 'Gaya musik metal yang penuh semangat, melody melodius, tempo tinggi, dan lirik yang berfokus sama epik fantasi atau mitologi.',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaN-PIBPlkhAys-BAu6mpSjDfnvZLklvxja-sP-GEnsA&s=10',
      },
    ];

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          // SCROLL VERTIKAL
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: galleryData.length,
            itemBuilder: (context, index) {
              final item = galleryData[index];

              return Center(
                child: Container(
                  width: 500,
                  height: 230,
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.network(
                            item['image']!,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.grey.shade300,
                                child: const Icon(Icons.broken_image, size: 40),
                              );
                            },
                          ),
                        ),

                        Positioned.fill(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.7),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          bottom: 12,
                          left: 12,
                          right: 12,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item['title']!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                item['desc']!,
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),

          // SCROLL HORIZONTAL
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: galleryData.length,
              itemBuilder: (context, index) {
                final item = galleryData[index];

                return Container(
                  width: 500,
                  height: 200,
                  margin: const EdgeInsets.only(right: 12, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.network(
                            item['image']!,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.grey.shade300,
                                child: const Icon(Icons.broken_image, size: 40),
                              );
                            },
                          ),
                        ),

                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            color: Colors.black54,
                            child: Text(
                              item['title']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
