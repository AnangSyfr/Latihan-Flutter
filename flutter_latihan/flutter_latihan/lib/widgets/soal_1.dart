import 'package:flutter/material.dart';

class soal_1 extends StatelessWidget {
  const soal_1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text("Flutter App"),
        actions: [
          IconButton(
              onPressed: () {
                print("Klik More");
              },
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: Center(
        child: Text(
          "Hello World",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
