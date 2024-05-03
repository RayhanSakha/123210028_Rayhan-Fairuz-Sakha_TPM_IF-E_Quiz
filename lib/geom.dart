import 'package:flutter/material.dart';

import 'kubus.dart';
import 'trapesium.dart';

class GeomPage extends StatelessWidget {
  const GeomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hitung Geometri'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to Trapesium page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TrapesiumPage()),
                );
              },
              child: const Text('Hitung Trapesium'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Kubus page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KubusPage()),
                );
              },
              child: const Text('Hitung Kubus'),
            ),
          ],
        ),
      ),
    );
  }
}