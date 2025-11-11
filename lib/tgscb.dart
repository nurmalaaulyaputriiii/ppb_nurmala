import 'package:flutter/material.dart';

class Profille extends StatelessWidget {
  const Profille({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil saya', style: TextStyle(color: Color.fromARGB(255, 191, 118, 118)),
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('images/foto2.jpg', width: 150),
              ),
            ),
          const SizedBox(height: 12),
          const Text("Nurmala aulya putri", style: TextStyle(
            fontSize: 24,
          ),),
          const Text("sedang belajar", style: TextStyle(
            fontSize: 16
          ),),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.call, color: Colors.yellow,), label: Text('Call', style: TextStyle(color: Colors.yellow),),
               style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 204, 196, 196))),),
              ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.map, color: Colors.red,), label: Text('Route', style: TextStyle(color: Colors.red),),
               style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 173, 162, 161))),),
              ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.share, color: Colors.green,), label: Text('Share', style: TextStyle(color: Colors.green),),
               style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 166, 175, 166))),),
            ],
          )
        ],
      ),
        )
    );
  }
}