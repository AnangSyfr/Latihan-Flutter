import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class lat_dialog extends StatelessWidget {
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
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Column(
                  children: [
                    Icon(
                      Icons.info,
                      size: 50,
                      color: Colors.blue,
                    ),
                    Text("Perhatian"),
                  ],
                ),
                content: Text("Saya sedang latihan alert dialog"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Cancel")),
                  TextButton(onPressed: () {}, child: Text("Ok")),
                ],
              ),
            );
          },
          child: Text("Klik Saya!"),
        ),
      ),
    );
  }
}
