import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Color> myColor = [Colors.blue, Colors.green, Colors.yellow, Colors.red];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Coba List View"),
            backgroundColor: Colors.green,
          ),
          body: ListView.separated(
            separatorBuilder: (context, index) {
              return Container(
                height: 10,
                color: Colors.white,
              );
            },
            itemCount: myColor.length,
            itemBuilder: (context, index) {
              return Container(
                child: const Center(child: Text("Hello Anang")),
                height: 200,
                color: myColor[index],
              );
            },
          )),
    );
  }
}
