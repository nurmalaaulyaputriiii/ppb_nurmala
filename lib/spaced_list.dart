import 'package:flutter/material.dart';

class SpacedList extends StatelessWidget {
  const SpacedList({super.key});

  @override
  Widget build(BuildContext context) {

    int itemCount = 4;
  
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List panjang',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: LayoutBuilder(// tinggi maksimum parent (induk)
        builder: (context, constraints){
          return SingleChildScrollView( // agar bisa di scroll
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(
                itemCount, (index) => Card(
                  color: Colors.yellow,
                  margin: EdgeInsets.all(16),
                  child: SizedBox(
                    height: 100,
                    child: Center(
                    child: Text(
                      'Item $index',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              )
              )
            ),
            ),
          );
        }
      ),
    );
  }
}