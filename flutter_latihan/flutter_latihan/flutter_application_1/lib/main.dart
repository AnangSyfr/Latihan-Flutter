import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/HomeController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Worker"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text("input disini ${homeC.dataPantau}")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (value) => homeC.change(),
                  decoration: InputDecoration(
                      labelText: "Ketikkan Sesuatu",
                      border: OutlineInputBorder()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
