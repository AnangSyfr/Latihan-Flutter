import 'dart:math';

import 'package:flutter/material.dart';

class soal_4 extends StatelessWidget {
  const soal_4({
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
          child: Transform.rotate(
        angle: pi / 2,
        child: FlutterLogo(size: 200),
      )),
    );
  }
}
