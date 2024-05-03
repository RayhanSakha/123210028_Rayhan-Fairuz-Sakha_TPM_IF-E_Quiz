import 'package:flutter/material.dart';
import 'geom.dart';
import 'biodata.dart';
import 'hari.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Utama'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to Biodata page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Biodata()),
                );
              },
              child: const Text('Biodata'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Hitung Geometri page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GeomPage()),
                );
              },
              child: const Text('Hitung Geometri'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Konversi Hari page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KonversiHari()),
                );
              },
              child: const Text('Konversi Hari'),
            ),
          ],
        ),
      ),
    );
  }
}