import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_product_controller.dart';
import '../../controllers/products_controller.dart';

class AddProductView extends GetView<AddProductController> {
  final productC = Get.find<ProductsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddProductView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            TextField(
              controller: controller.nameC,
              autocorrect: false,
              decoration: InputDecoration(label: Text("Nama Barang")),
            ),
            TextField(
              controller: controller.priceC,
              autocorrect: false,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(label: Text("Harga")),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () => productC.addProduct(
                    controller.nameC.text, controller.priceC.text),
                child: Text("Simpan")),
          ],
        ),
      ),
    );
  }
}
