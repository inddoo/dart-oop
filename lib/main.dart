import 'package:flutter/material.dart';
import 'models/mobil.dart';
import 'models/mahasiswa.dart';
import 'models/buku.dart';
import 'models/segitiga.dart';
import 'models/warna.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dart OOP Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Inisialisasi objek
    var mobil1 = Mobil('Toyota', 'Avanza', 2023);
    var mahasiswa1 = Mahasiswa();
    var buku1 = Buku('Pemrograman Dart', 'John Doe');
    var segitiga1 = Segitiga.sikuSiku(10, 8);
    var segitiga2 = Segitiga.samaSisi(12);
    var segitiga3 = Segitiga.samaKaki(15, 10);
    const warna1 = Warna(255, 0, 0);
    const warna2 = Warna(0, 255, 0);
    const warna3 = Warna(0, 0, 255);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dart OOP Demo'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              '1. Class Mobil',
              Icons.directions_car,
              Colors.blue,
              [
                _buildInfoCard('Merk', mobil1.merk),
                _buildInfoCard('Model', mobil1.model),
                _buildInfoCard('Tahun', mobil1.tahun.toString()),
              ],
            ),
            const SizedBox(height: 20),
            _buildSection(
              '2. Class Mahasiswa (Default Values)',
              Icons.school,
              Colors.green,
              [
                _buildInfoCard('Nama', mahasiswa1.nama),
                _buildInfoCard('NIM', mahasiswa1.nim),
              ],
            ),
            const SizedBox(height: 20),
            _buildSection(
              '3. Class Buku (Parameterized Constructor)',
              Icons.book,
              Colors.orange,
              [
                _buildInfoCard('Judul', buku1.judul),
                _buildInfoCard('Pengarang', buku1.pengarang),
              ],
            ),
            const SizedBox(height: 20),
            _buildSection(
              '4. Class Segitiga (Named Constructor)',
              Icons.change_history,
              Colors.purple,
              [
                _buildSegitigaCard(segitiga1),
                _buildSegitigaCard(segitiga2),
                _buildSegitigaCard(segitiga3),
              ],
            ),
            const SizedBox(height: 20),
            _buildSection(
              '5. Class Warna (Constant Constructor)',
              Icons.palette,
              Colors.pink,
              [
                _buildWarnaCard(warna1),
                _buildWarnaCard(warna2),
                _buildWarnaCard(warna3),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, IconData icon, Color color, List<Widget> children) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: color, size: 28),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(height: 24),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }

  Widget _buildSegitigaCard(Segitiga segitiga) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Segitiga ${segitiga.jenis}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text('Alas: ${segitiga.alas}'),
          Text('Tinggi: ${segitiga.tinggi.toStringAsFixed(2)}'),
          Text('Luas: ${segitiga.hitungLuas().toStringAsFixed(2)}'),
        ],
      ),
    );
  }

  Widget _buildWarnaCard(Warna warna) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color.fromRGBO(warna.red, warna.green, warna.blue, 0.3),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color.fromRGBO(warna.red, warna.green, warna.blue, 1),
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color.fromRGBO(warna.red, warna.green, warna.blue, 1),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            'RGB(${warna.red}, ${warna.green}, ${warna.blue})',
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
