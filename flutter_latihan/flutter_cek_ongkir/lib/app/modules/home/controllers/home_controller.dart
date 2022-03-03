import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as conn;

import '../../../data/models/ongkir_model.dart';

class HomeController extends GetxController {
  TextEditingController beratC = TextEditingController();
  List<Ongkir> dataOngkir = [];

  RxString IdProvAsal = "0".obs;
  RxString IdCityAsal = "0".obs;
  RxString IdProvTujuan = "0".obs;
  RxString IdCityTujuan = "0".obs;
  RxString KodeKurir = "".obs;

  RxBool isLoading = false.obs;

  void cekOngkir() async {
    if (IdProvAsal != "0" &&
        IdCityAsal != "0" &&
        IdProvTujuan != "0" &&
        IdCityTujuan != "0" &&
        KodeKurir != "" &&
        beratC.text != "") {
      try {
        isLoading.value = true;
        var response = await conn.post(
            Uri.parse("https://api.rajaongkir.com/starter/cost"),
            headers: {
              "key": "de900d8d23d4930ac98d038e7eaf7aa1",
              "content-type": "application/x-www-form-urlencoded"
            },
            body: {
              "origin": IdCityAsal.value,
              "destination": IdCityTujuan.value,
              "weight": beratC.text,
              "courier": KodeKurir.value,
            });
        List results = json.decode(response.body)["rajaongkir"]["results"][0]
            ["costs"] as List;
        dataOngkir = Ongkir.fromJsonList(results);
        Get.defaultDialog(
            title: "Ongkos Kirim",
            content: Column(
              children: dataOngkir
                  .map(
                    (e) => ListTile(
                      title: Text("${e.service!.toUpperCase()}"),
                      subtitle: Text("Rp. ${e.cost![0].value}"),
                    ),
                  )
                  .toList(),
            ));
      } catch (e) {
        Get.defaultDialog(
            title: "TERJADI KESALAHAN",
            middleText: "Tidak dapat cek ongkos kirim !");
      }
      isLoading.value = false;
    } else {
      Get.defaultDialog(
          title: "TERJADI KESALAHAN", middleText: "Data belum lengkap !");
      print("${IdProvAsal} ${IdCityAsal} ${IdProvTujuan} ${IdCityTujuan}");
    }
  }
}
