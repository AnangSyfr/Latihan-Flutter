import 'package:flutter/material.dart';

class soal_20 extends StatelessWidget {
  const soal_20({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: FlutterLogo(),
          padding: EdgeInsets.all(10),
        ),
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
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 300, height: 300, color: Colors.green),
            Container(width: 280, height: 280, color: Colors.blue),
            Container(width: 260, height: 260, color: Colors.red),
            Container(width: 240, height: 240, color: Colors.yellow),
          ],
        ),
      ),
    );
  }
}
