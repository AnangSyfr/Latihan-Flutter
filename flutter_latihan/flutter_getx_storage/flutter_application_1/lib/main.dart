import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/LoginPage.dart';
import 'pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginPage(),
      getPages: [GetPage(name: "/home", page: Get.put(() => HomePage()))],
    );
  }
}
