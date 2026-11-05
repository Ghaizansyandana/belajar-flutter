import 'package:flutter/material.dart';
import 'package:flutter_gojin_rpl3/navigation/about_page.dart';

class MyNav extends StatelessWidget {
  const MyNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigasi Halaman"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // --- KATEGORI: NAVIGATION ---
            _buildCategoryHeader("1. Navigasi & About"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AboutPage(
                        nama: "ghaizan",
                        kelas: "RPL3",
                        umur: 17,
                      );
                    },
                  ),
                );
              },
              child: const Text("Pindah Ke Halaman About (Direct Push)"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: const Text("Pindah Ke Halaman About (Named Route)"),
            ),

            const SizedBox(height: 16),

            // --- KATEGORI: GRID VIEW ---
            _buildCategoryHeader("2. Grid View"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/grid');
              },
              child: const Text("Pindah Ke Halaman Grid (Fauna)"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/grid_basic');
              },
              child: const Text("Pindah Ke Halaman Grid Basic"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/grid_builder');
              },
              child: const Text("Pindah Ke Halaman Grid Builder (Produk)"),
            ),

            const SizedBox(height: 16),

            // --- KATEGORI: LIST VIEW ---
            _buildCategoryHeader("3. List View"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list');
              },
              child: const Text("Pindah Ke Halaman List Basic"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/mywidgetgw');
              },
              child: const Text("Pindah Ke Halaman WidgetGw (Metal List)"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list_builder');
              },
              child: const Text("Pindah Ke Halaman List Builder (Partai)"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list_builder2');
              },
              child: const Text("Pindah Ke Halaman List Builder 2 (Siswa)"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list_separated');
              },
              child: const Text("Pindah Ke Halaman List Separated"),
            ),

            const SizedBox(height: 16),

            // --- KATEGORI: ROW & COLUMN ---
            _buildCategoryHeader("4. Row & Column"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/kartu');
              },
              child: const Text("Pindah Ke Halaman Kartu (Pokemon)"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/column_widget');
              },
              child: const Text("Pindah Ke Halaman Column Widget"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/row_widget');
              },
              child: const Text("Pindah Ke Halaman Row Widget"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/row_column');
              },
              child: const Text("Pindah Ke Halaman Row & Column"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/layout_widget');
              },
              child: const Text("Pindah Ke Halaman Layout Widget"),
            ),

            const SizedBox(height: 16),

            // --- KATEGORI: SIZEDBOX & STACK ---
            _buildCategoryHeader("5. SizedBox & Stack"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/latihan_profil');
              },
              child: const Text("Pindah Ke Halaman Latihan Profil"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sized_box');
              },
              child: const Text("Pindah Ke Halaman SizedBox"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/expanded');
              },
              child: const Text("Pindah Ke Halaman Expanded"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/stack');
              },
              child: const Text("Pindah Ke Halaman Stack Widget"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/layout_satu');
              },
              child: const Text("Pindah Ke Halaman Layout 1 (Profil)"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/layout_dua');
              },
              child: const Text("Pindah Ke Halaman Layout 2 (Diskon)"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/layout_tiga');
              },
              child: const Text("Pindah Ke Halaman Layout 3 (Keuangan)"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/layout_empat');
              },
              child: const Text("Pindah Ke Halaman Layout 4 (Header)"),
            ),

            const SizedBox(height: 16),

            // --- KATEGORI: CONTAINER ---
            _buildCategoryHeader("6. Container Widget"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/container');
              },
              child: const Text("Pindah Ke Halaman Belajar Container"),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
