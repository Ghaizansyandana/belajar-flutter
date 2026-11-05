import 'package:flutter/material.dart';

class MyLatihanGw extends StatelessWidget {
  const MyLatihanGw({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> fauna = [
      {
        'badge': 'News',
        'title': 'Migration – Eight extraordinary epic journeys in nature',
        'location': 'West Java, Indonesia',
        'desc': 'Some animals move at least once during their lifetime across continents.',
        'image': 'https://cdn.shortpixel.ai/spai2/q_lossless+w_588+to_auto+ret_img/www.fauna-flora.org/wp-content/uploads/2026/07/Website-Use-UKP-0002-CCO.jpg',
      },
      {
        'badge': 'Fauna',
        'title': 'Harimau Sumatera',
        'location': 'Sumatera, Indonesia',
        'desc': 'Spesies harimau terakhir di Indonesia yang kini dilindungi dan terancam punah.',
        'image': 'https://images.unsplash.com/photo-1561731216-c3a4d99437d5?w=600',
      },
      {
        'badge': 'Endemik',
        'title': 'Komodo Dragon',
        'location': 'Nusa Tenggara Timur',
        'desc': 'Kadal raksasa purba terbesar di dunia yang mendiami kepulauan Komodo.',
        'image': 'https://images.unsplash.com/photo-1504450874802-0ba2bcd9b5ae?w=600',
      },
      {
        'badge': 'Fauna',
        'title': 'Burung Cenderawasih',
        'location': 'Papua, Indonesia',
        'desc': 'Burung surga berbulu indah yang menjadi identitas kekayaan alam Papua.',
        'image': 'https://images.unsplash.com/photo-1552728089-57bdde30beb3?w=600',
      },
      {
        'badge': 'Langka',
        'title': 'Orangutan Kalimantan',
        'location': 'Kalimantan, Indonesia',
        'desc': 'Primata cerdas penjaga ekosistem hutan hujan tropis Indonesia.',
        'image': 'https://images.unsplash.com/photo-1540573133985-87b6da6d54a9?w=600',
      },
      {
        'badge': 'Konservasi',
        'title': 'Badak Jawa Bercula Satu',
        'location': 'Ujung Kulon, Banten',
        'desc': 'Mamalia paling langka yang berada di bawah perlindungan ketat habitatnya.',
        'image': 'https://images.unsplash.com/photo-1575550959106-5a7defe28b56?w=600',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Fauna Grid"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: fauna.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.72,
        ),
        itemBuilder: (context, index) {
          final item = fauna[index];

          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.15),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                children: [
                  // Gambar Latar
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

                  // Lapisan Gradasi Gelap
                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.black.withValues(alpha: 0.2),
                            Colors.black.withValues(alpha: 0.85),
                          ],
                          stops: const [0.2, 0.55, 1.0],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),

                  // Badge Tag di Pojok Kiri Atas
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        item['badge']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),

                  // Informasi Konten di Bagian Bawah
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Lokasi
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 12,
                              color: Colors.amber,
                            ),
                            const SizedBox(width: 3),
                            Expanded(
                              child: Text(
                                item['location'] ?? '',
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),

                        // Judul
                        Text(
                          item['title']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),

                        // Deskripsi Singkat
                        Text(
                          item['desc']!,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 10,
                            height: 1.2,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
