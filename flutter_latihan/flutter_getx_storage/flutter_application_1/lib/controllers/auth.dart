import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Auth extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool isHidden = true.obs;

  void login() {
    if (username.text == 'admin' && password.text == 'admin') {
      final box = GetStorage();
      if (box.read('datauser') != null) {
        box.remove('datauser');
      }
      box.write(
          "datauser", {"username": username.text, "password": password.text});
      Get.offAllNamed("/home");
    } else {
      Get.defaultDialog(
          title: "Login Gagal",
          middleText: "Username / Password tidak terdaftar");
    }
  }
}
