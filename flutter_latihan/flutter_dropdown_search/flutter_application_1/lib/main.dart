import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:http/http.dart' as conn;
import './models/province.dart';
import './models/city.dart';
import './models/district.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String? idProv = "0";
  String? idKab = "0";
  final String apiKey =
      "9c0f32c9ae49e2315f598eba50ae0490497b395ff5a3f60e1a46b03159b3ae61";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dropdown Search"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              DropdownSearch<Province>(
                showSearchBox: true,
                mode: Mode.DIALOG,
                popupItemBuilder: (context, item, isSelected) => ListTile(
                  title: Text(item.name),
                ),
                dropdownBuilder: (context, selectedItem) =>
                    Text(selectedItem?.name ?? "Belum memilih provinsi"),
                onChanged: (value) => idProv = value?.id,
                onFind: (text) async {
                  var res = await conn.get(Uri.parse(
                      "https://api.binderbyte.com/wilayah/provinsi?api_key=$apiKey"));
                  if (res.statusCode != 200) {
                    return [];
                  }

                  List allProvince =
                      (json.decode(res.body) as Map<String, dynamic>)["value"];
                  List<Province> allModelProvince = [];
                  allProvince.forEach((element) {
                    allModelProvince.add(
                        Province(id: element["id"], name: element["name"]));
                  });
                  return allModelProvince;
                },
              ),
              SizedBox(height: 10),
              DropdownSearch<City>(
                showSearchBox: true,
                mode: Mode.DIALOG,
                popupItemBuilder: (context, item, isSelected) => ListTile(
                  title: Text(item.name),
                ),
                dropdownBuilder: (context, selectedItem) =>
                    Text(selectedItem?.name ?? "Belum memilih kabupaten"),
                onChanged: (value) => idKab = value?.id,
                onFind: (text) async {
                  print(idProv);
                  var res = await conn.get(Uri.parse(
                      "https://api.binderbyte.com/wilayah/kabupaten?api_key=$apiKey&id_provinsi=$idProv"));
                  if (res.statusCode != 200) {
                    return [];
                  }

                  List allCity =
                      (json.decode(res.body) as Map<String, dynamic>)["value"];
                  print(allCity);
                  List<City> allModelCity = [];
                  allCity.forEach((element) {
                    allModelCity.add(City(
                        id: element['id'],
                        idProvinsi: element['id_provinsi'],
                        name: element['name']));
                  });
                  return allModelCity;
                },
              ),
              SizedBox(height: 10),
              DropdownSearch<District>(
                showSearchBox: true,
                mode: Mode.DIALOG,
                popupItemBuilder: (context, item, isSelected) => ListTile(
                  title: Text(item.name),
                ),
                dropdownBuilder: (context, selectedItem) =>
                    Text(selectedItem?.name ?? "Belum memilih kecamatan"),
                onChanged: (value) => print(value?.toJson()),
                onFind: (text) async {
                  print(idKab);
                  var res = await conn.get(Uri.parse(
                      "https://api.binderbyte.com/wilayah/kecamatan?api_key=$apiKey&id_kabupaten=$idKab"));
                  if (res.statusCode != 200) {
                    return [];
                  }

                  List allDistrict =
                      (json.decode(res.body) as Map<String, dynamic>)["value"];
                  print(allDistrict);
                  List<District> allModelDistrict = [];
                  allDistrict.forEach((element) {
                    allModelDistrict.add(District(
                        id: element['id'],
                        idKabupaten: element['id_kabupaten'],
                        name: element['name']));
                  });
                  return allModelDistrict;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
