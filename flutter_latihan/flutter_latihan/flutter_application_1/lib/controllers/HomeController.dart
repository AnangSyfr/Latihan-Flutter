import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt dataPantau = 0.obs;

  void change() => dataPantau++;

  @override
  void onInit() {
    // ever(dataPantau, (data) => print("perubahan"));
    // once(dataPantau, (data) => print("once.."));
    // debounce(dataPantau, (data) => print("debounce.."),
    //     time: Duration(seconds: 2));
    interval(dataPantau, (data) => print("debounce.."),
        time: Duration(seconds: 2));
    super.onInit();
  }
}
