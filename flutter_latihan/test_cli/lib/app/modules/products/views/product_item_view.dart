import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key, required this.data});

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("${data["nama"]}"),
      subtitle: Text("Rp. ${data["harga"]}"),
    );
  }
}
