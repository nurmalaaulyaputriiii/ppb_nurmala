import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20), 

            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'images/fotoaku.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'Nurmala Aulya Putri',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              'Flutter Developer',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 32),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Aksi untuk tombol Call
                      },
                      child: const Icon(Icons.call),
                    ),
                    const SizedBox(height: 8),
                    const Text('Call'),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {

                      },
                      child: const Icon(Icons.location_on),
                    ),
                    const SizedBox(height: 8),
                    const Text('Route'),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {

                      },
                      child: const Icon(Icons.share),
                    ),
                    const SizedBox(height: 8),
                    const Text('Share'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
}
}