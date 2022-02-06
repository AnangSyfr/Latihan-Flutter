import 'package:flutter/material.dart';

class soal_5 extends StatelessWidget {
  const soal_5({
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
        child: Container(
          color: Colors.blue,
          width: 150,
          height: 150,
          child: Center(
              child: Text(
            "Hello",
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
