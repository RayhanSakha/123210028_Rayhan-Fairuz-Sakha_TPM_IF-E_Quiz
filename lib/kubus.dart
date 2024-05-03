import 'package:flutter/material.dart';

class KubusPage extends StatefulWidget {
  const KubusPage({Key? key}) : super(key: key);

  @override
  State<KubusPage> createState() => _KubusPageState();
}

class _KubusPageState extends State<KubusPage> {
  final _formKey = GlobalKey<FormState>();
  final _sisiController = TextEditingController();

  double _volume = 0;
  double _keliling = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hitung Kubus'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _sisiController,
                decoration: const InputDecoration(labelText: 'Sisi'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Sisi tidak boleh kosong';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      double sisi = double.parse(_sisiController.text);

                      _volume = sisi * sisi * sisi;
                      _keliling = 12 * sisi;
                    });
                  }
                },
                child: const Text('Hitung'),
              ),
              const SizedBox(height: 16.0),
              Text('Volume: $_volume'),
              Text('Keliling: $_keliling'),
            ],
          ),
        ),
      ),
    );
  }
}