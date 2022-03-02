import 'package:get/get.dart';

class ProductsController extends GetxController {
  RxList<Map<String, dynamic>> allProducts = <Map<String, dynamic>>[
    {
      "id": 1,
      "nama": "Sendal",
      "harga": 15000,
    },
    {
      "id": 2,
      "nama": "Sepatu",
      "harga": 50000,
    },
    {
      "id": 3,
      "nama": "Tas",
      "harga": 30000,
    }
  ].obs;

  void addProduct(String name, String price) {
    if (name.isNotEmpty && price.isNotEmpty) {
      allProducts.add({
        "id": DateTime.now().toIso8601String(),
        "nama": name,
        "harga": int.parse(price)
      });
      Get.back();
    }
  }
}
