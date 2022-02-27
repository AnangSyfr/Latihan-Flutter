import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddProductView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddProductView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
