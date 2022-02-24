import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/PageSatu.dart';
import 'controllers/SatuController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final pageSatuC = Get.lazyPut(() => SatuController());
  // final pageSatuC = Get.put(SatuController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PageSatu(),
    );
  }
}
