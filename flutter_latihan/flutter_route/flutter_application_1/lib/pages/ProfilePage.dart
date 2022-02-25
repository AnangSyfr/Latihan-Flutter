import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Profile Page"),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Back"),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.offAll(HomePage());
                // Navigator.of(context).pushNamed("home");
                Get.offAllNamed("/home");
              },
              child: Text("Back Home"),
            ),
          ],
        ),
      ),
    );
  }
}
