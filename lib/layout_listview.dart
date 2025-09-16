import 'package:flutter/material.dart';

class LayoutListView extends StatelessWidget {
  const LayoutListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Vertikal')),
      // Body berisi Listview yang menampilkan daftar item secara vertikal
      body: ListView(
        children: <Widget> [
          ListTile(leading: Icon(Icons.map), title: Text('map')),
          ListTile(leading: Icon(Icons.photo_album), title: Text('album')),
          ListTile(leading: Icon(Icons.phone), title: Text('phone')),
        ],
      ),
    );
  }
}