import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/SatuController.dart';
import './PageDua.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Satu"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageDua(),
                      ));
                },
                child: Text("Page 2"))
          ],
        ),
      ),
    );
  }
}
