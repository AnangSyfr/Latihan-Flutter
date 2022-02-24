import './PageSatu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/SatuController.dart';

class PageDua extends StatelessWidget {
  SatuController pageSatuC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Dua"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "${pageSatuC.data2['nama']} - ${pageSatuC.data2['umur']} tahun"),
          ],
        ),
      ),
    );
  }
}
