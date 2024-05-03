import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TrapesiumPage(),
  ));
}

class TrapesiumPage extends StatefulWidget {
  @override
  _TrapesiumPageState createState() => _TrapesiumPageState();
}

class _TrapesiumPageState extends State<TrapesiumPage> {
  double sisiAtas = 0.0;
  double sisiBawah = 0.0;
  double tinggi = 0.0;
  double sisiMiring1 = 0.0;
  double sisiMiring2 = 0.0;

  double luas = 0.0;
  double keliling = 0.0;

  void hitungLuasDanKeliling() {
    setState(() {
      luas = 0.5 * (sisiAtas + sisiBawah) * tinggi;
      keliling = sisiAtas + sisiBawah + sisiMiring1 + sisiMiring2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Luas & Keliling Trapesium'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Masukkan panjang sisi atas'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  sisiAtas = double.parse(value);
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Masukkan panjang sisi bawah'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  sisiBawah = double.parse(value);
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Masukkan tinggi'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  tinggi = double.parse(value);
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Masukkan panjang sisi miring 1'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  sisiMiring1 = double.parse(value);
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Masukkan panjang sisi miring 2'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  sisiMiring2 = double.parse(value);
                });
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: hitungLuasDanKeliling,
              child: Text('Hitung'),
            ),
            SizedBox(height: 20.0),
            Text('Luas Trapesium: $luas'),
            Text('Keliling Trapesium: $keliling'),
          ],
        ),
      ),
    );
  }
}
