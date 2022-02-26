import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Auth extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool isHidden = true.obs;
  RxBool isRemember = false.obs;

  void login() async {
    final box = GetStorage();
    if (username.text == 'admin' && password.text == 'admin') {
      if (box.read('datauser') != null) {
        box.remove('datauser');
      }
      if (isRemember.isTrue) {
        box.write(
            "datauser", {"username": username.text, "password": password.text});
      }
      print(box.read('datauser'));

      Get.offAllNamed("/home");
    } else {
      Get.defaultDialog(
          title: "Login Gagal",
          middleText: "Username / Password tidak terdaftar");
    }
  }

  void logout() async {
    Get.offAllNamed("/logout");
  }
}
