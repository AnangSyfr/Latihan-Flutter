import 'package:flutter/material.dart';

class soal_6 extends StatelessWidget {
  const soal_6({
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
        // bisa dibungkus dengan clip oval
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(150 / 2),
          ),
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
