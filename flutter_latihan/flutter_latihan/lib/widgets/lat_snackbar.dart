import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class lat_snackbar extends StatelessWidget {
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
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Hallo"),
                duration: Duration(seconds: 3),
                action: SnackBarAction(
                  label: "Cancel",
                  textColor: Colors.red,
                  onPressed: () {},
                ),
                margin: EdgeInsets.all(10),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ));
            },
            child: Text("Click Me!"),
          ),
        ));
  }
}
