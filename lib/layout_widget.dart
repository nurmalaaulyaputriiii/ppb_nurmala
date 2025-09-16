import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("profil nurmalaaulyaputri"),
      ),
      body: Column(
        children: [
          Image.asset('images/logosmk.png'), //menampilkan gambar
          const SizedBox(height: 10), //jarak antara gambar dan teks
          const Text(
            'Nurmala Aulya Putri',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),

          ), //ini adalah judul
          const SizedBox(height: 10),
          const Text(
            'siswa smk ypc tasikmalaya',
            style: TextStyle(
              color: Colors.blue //warna tulisan
            ),
          ), //ini sub juduul
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [Icon(Icons.call), Text('call')],
              ),
              Column(
                children: [Icon(Icons.map), Text('Route')],
              ),
              Column(
                children: [Icon(Icons.share), Text('share')],
              )
            ],
          ),
        ],
      ),
    );
  }
}