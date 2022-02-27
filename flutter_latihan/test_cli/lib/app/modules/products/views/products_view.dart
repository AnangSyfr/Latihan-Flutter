import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_cli/app/routes/app_pages.dart';

import '../controllers/products_controller.dart';

class ProductsView extends GetView<ProductsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        centerTitle: true,
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.allProducts.length,
          itemBuilder: (context, index) => ListTile(
            title: Text("${controller.allProducts[index]["nama"]}"),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.toNamed(Routes.ADD_PRODUCT);
        },
      ),
    );
  }
}
