import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List dan GridView')),
      body: ListView(
        children: [
          // Bagian Menu Aplikasi
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Menu Aplikasi:', style: TextStyle(fontSize: 18)),
          ),
          const ListTile(leading: Icon(Icons.map), title: Text('Map')),
          const ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          const ListTile(leading: Icon(Icons.phone), title: Text('Phone')),

        
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Warna Horizontal:', style: TextStyle(fontSize: 18)),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                SizedBox(width: 100, child: ColoredBox(color: Colors.red)),
                SizedBox(width: 100, child: ColoredBox(color: Colors.blue)),
                SizedBox(width: 100, child: ColoredBox(color: Colors.green)),
                SizedBox(width: 100, child: ColoredBox(color: Colors.yellow)),
                SizedBox(width: 100, child: ColoredBox(color: Colors.orange)),
              ],
            ),
          ),

          
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Grid Item:', style: TextStyle(fontSize: 18)),
          ),
          SizedBox(
            height: 300,
            child: GridView.count(
              crossAxisCount: 2,
              physics:
                  const NeverScrollableScrollPhysics(), // agar tidak bentrok dengan ListView
              children: List.generate(6, (index) {
                return Center(
                  child: Text(
                    'Item $index',
                    style: const TextStyle(fontSize: 20),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}