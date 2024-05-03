import 'package:flutter/material.dart';

class KonversiHari extends StatefulWidget {
  const KonversiHari({Key? key}) : super(key: key);

  @override
  State<KonversiHari> createState() => _KonversiHariState();
}

class _KonversiHariState extends State<KonversiHari> {
  final _formKey = GlobalKey<FormState>();
  final _inputController = TextEditingController();

  String _hari = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konversi Hari'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _inputController,
                decoration: const InputDecoration(labelText: 'Input (1-7)'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Input tidak boleh kosong';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      int input = int.parse(_inputController.text);

                      switch (input) {
                        case 1:
                          _hari = 'Senin';
                          break;
                        case 2:
                          _hari = 'Selasa';
                          break;
                        case 3:
                          _hari = 'Rabu';
                          break;
                        case 4:
                          _hari = 'Kamis';
                          break;
                        case 5:
                          _hari = 'Jumat';
                          break;
                        case 6:
                          _hari = 'Sabtu';
                          break;
                        case 7:
                          _hari = 'Minggu';
                          break;
                        default:
                          _hari = 'Input tidak valid';
                      }
                    });
                  }
                },
                child: const Text('Konversi'),
              ),
              const SizedBox(height: 16.0),
              Text('Hari: $_hari'),
            ],
          ),
        ),
      ),
    );
  }
}