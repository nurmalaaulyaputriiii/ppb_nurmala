import 'package:flutter/material.dart';
import 'package:flutter_tugasnurmala/detail_page.dart';
import 'package:flutter_tugasnurmala/halaman3.dart';

class HomePagee extends StatelessWidget {
  final String nama = "Nurmala Aulya Putri";
  final String umur = "17";
  const HomePagee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Halaman1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) 
                  => DetailPage(nama: nama, umur: umur)),
                );
              }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue
                ),
            child: Text('pergi ke halaman 2', style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) 
                  =>Halaman3()),
                );
            }, 
            child: Text('pergi ke halaman 3', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}