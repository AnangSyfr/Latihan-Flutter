import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Hello"),
          ),
          body: Row(
            children: [
              Container(
                width: 70,
                height: 70,
                color: Colors.blue,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
              Container(
                width: 40,
                height: 40,
                color: Colors.yellow,
              )
            ],
          )),
    );
  }
}
