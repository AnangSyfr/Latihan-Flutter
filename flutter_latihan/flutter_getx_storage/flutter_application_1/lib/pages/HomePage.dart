import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../controllers/auth.dart';

class HomePage extends StatelessWidget {
  final box = GetStorage();
  final Auth AuthC = Get.find();

  @override
  Widget build(BuildContext context) {
    print(box.read('datauser'));
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AuthC.logout();
        },
        child: Icon(Icons.logout),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Selamat Datang ${AuthC.username.text}"),
          ],
        ),
      ),
    );
  }
}
