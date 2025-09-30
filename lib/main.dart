import 'package:flutter/material.dart';
import 'package:flutter_tugasnurmala/tugas_spaced_longlist.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aplikasi Profil',
      debugShowCheckedModeBanner: false,
      home: TugasM5(),
    );
  }
}