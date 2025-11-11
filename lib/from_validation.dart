import 'package:flutter/material.dart';
import 'package:flutter_tugasnurmala/detail_page.dart';

class FromValidation extends StatefulWidget {
  const FromValidation({super.key});

  @override
  State<FromValidation> createState() => _FromValidationState();
}

class _FromValidationState extends State<FromValidation> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController umurController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(label: Text('Nama'), hint: Text('Massukan Nama')),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Tidak boleh kosong';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: umurController,
                decoration: InputDecoration(label: Text('Umur'), hint: Text('Massukan Umur')),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This umur required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()) {
                    String name = nameController.text;
                    String umur = umurController.text;

                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>
                      DetailPage(nama: name, umur: umur)),
                      );

                    // ScaffoldMessenger.of(
                    //   context
                    // ).showSnackBar(SnackBar(content: Text('Data Valid!')));
                  }
                },
                child: Text('submit'))
            ],
          ),
        ),
      ),
    );
  }
}