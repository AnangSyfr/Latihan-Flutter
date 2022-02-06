import 'package:flutter/material.dart';
import 'package:flutter_latihan/widgets/soal_10.dart';

class soal_21 extends StatelessWidget {
  const soal_21({
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
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.blue, width: 10),
                  borderRadius: BorderRadius.circular(300 / 2),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://picsum.photos/seed/picsum/200/300"))),
            ),
          ],
        ),
      ),
    );
  }
}
