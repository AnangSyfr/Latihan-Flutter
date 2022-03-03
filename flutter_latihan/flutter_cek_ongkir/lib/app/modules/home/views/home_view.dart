import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:dio/dio.dart';
import '../../../data/models/province_model.dart';
import '../../../data/models/city_model.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cek Ongkir'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          DropdownSearch<Province>(
            showSearchBox: true,
            popupItemBuilder: (context, item, isSelected) => ListTile(
              title: Text("${item.province}"),
            ),
            dropdownSearchDecoration: InputDecoration(
              labelText: "Provinsi Asal",
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              border: OutlineInputBorder(),
            ),
            onFind: (text) async {
              var response = await Dio().get(
                "https://api.rajaongkir.com/starter/province",
                queryParameters: {
                  "key": "de900d8d23d4930ac98d038e7eaf7aa1",
                },
              );
              return Province.fromJsonList(
                  response.data["rajaongkir"]["results"]);
            },
            onChanged: (value) =>
                controller.IdProvAsal.value = value?.provinceId ?? "0",
          ),
          SizedBox(
            height: 20,
          ),
          DropdownSearch<City>(
            showSearchBox: true,
            popupItemBuilder: (context, item, isSelected) => ListTile(
              title: Text("${item.type} ${item.cityName}"),
            ),
            dropdownSearchDecoration: InputDecoration(
              labelText: "Kota Asal",
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              border: OutlineInputBorder(),
            ),
            onFind: (text) async {
              var response = await Dio().get(
                "https://api.rajaongkir.com/starter/city?province=${controller.IdProvAsal}",
                queryParameters: {
                  "key": "de900d8d23d4930ac98d038e7eaf7aa1",
                },
              );
              return City.fromJsonList(response.data["rajaongkir"]["results"]);
            },
            onChanged: (value) =>
                controller.IdCityAsal.value = value?.cityId ?? "0",
          ),
          SizedBox(
            height: 20,
          ),
          DropdownSearch<Province>(
            showSearchBox: true,
            popupItemBuilder: (context, item, isSelected) => ListTile(
              title: Text("${item.province}"),
            ),
            dropdownSearchDecoration: InputDecoration(
              labelText: "Provinsi Tujuan",
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              border: OutlineInputBorder(),
            ),
            onFind: (text) async {
              var response = await Dio().get(
                "https://api.rajaongkir.com/starter/province",
                queryParameters: {
                  "key": "de900d8d23d4930ac98d038e7eaf7aa1",
                },
              );
              return Province.fromJsonList(
                  response.data["rajaongkir"]["results"]);
            },
            onChanged: (value) =>
                controller.IdProvTujuan.value = value?.provinceId ?? "0",
          ),
          SizedBox(
            height: 20,
          ),
          DropdownSearch<City>(
            showSearchBox: true,
            popupItemBuilder: (context, item, isSelected) => ListTile(
              title: Text("${item.type} ${item.cityName}"),
            ),
            dropdownSearchDecoration: InputDecoration(
              labelText: "Kota Tujuan",
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              border: OutlineInputBorder(),
            ),
            onFind: (text) async {
              var response = await Dio().get(
                "https://api.rajaongkir.com/starter/city?province=${controller.IdProvTujuan}",
                queryParameters: {
                  "key": "de900d8d23d4930ac98d038e7eaf7aa1",
                },
              );
              return City.fromJsonList(response.data["rajaongkir"]["results"]);
            },
            onChanged: (value) =>
                controller.IdCityTujuan.value = value?.cityId ?? "0",
          ),
          SizedBox(
            height: 20,
          ),
          DropdownSearch<Map<String, dynamic>>(
            items: [
              {
                "code": "jne",
                "name": "JNE",
              },
              {
                "code": "pos",
                "name": "POS INDONESIA",
              },
              {
                "code": "tiki",
                "name": "TIKI",
              },
            ],
            showSearchBox: true,
            popupItemBuilder: (context, item, isSelected) => ListTile(
              title: Text("${item['name']}"),
            ),
            dropdownSearchDecoration: InputDecoration(
              labelText: "Pilih Kurir",
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              border: OutlineInputBorder(),
            ),
            dropdownBuilder: (context, selectedItem) =>
                Text("${selectedItem?["name"] ?? "Pilih kurir"}"),
            onChanged: (value) =>
                controller.KodeKurir.value = value?["code"] ?? "",
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: controller.beratC,
            autocorrect: false,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Masukkan berat (gr)",
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Obx(
            () => ElevatedButton(
              onPressed: () {
                if (controller.isLoading.isFalse) {
                  controller.cekOngkir();
                }
              },
              child: Text(
                  controller.isLoading.isFalse ? "Cek Ongkir" : "Loading..."),
            ),
          ),
        ],
      ),
    );
  }
}
