import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './controllers/counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  int angka = 0;

  final counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(() => Text(
            //       "${counterController.count}",
            //       style: TextStyle(fontSize: 60),
            //     )),
            GetBuilder<CounterController>(
              builder: (controller) => Text(
                "${counterController.count}",
                style: TextStyle(fontSize: 60),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counterController.decrement();
                  },
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    counterController.increment();
                  },
                  child: Text("+"),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                counterController.updateCounter();
              },
              child: Text("Refresh"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //biasa
                // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("message alert")));

                //getx
                Get.snackbar("Informasi", "Notif informasi",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.teal,
                    margin: EdgeInsets.all(20));
              },
              child: Text("Open Snackbar"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //biasa
                // showDialog(
                //   context: context,
                //   builder: (context) => AlertDialog(
                //     title: Text("Notifikasi"),
                //     content: Text("Lorem Ipsum"),
                //   ),
                // );

                //getx
                Get.defaultDialog(
                    title: "Notifikasi", content: Text("Lorem Ipsum"));
              },
              child: Text("Open Dialog"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //biasa
                // showModalBottomSheet(
                //   context: context,
                //   builder: (context) => Container(
                //     height: 200,
                //     child: ListView(
                //       children: [
                //         ListTile(
                //           leading: Text("List1"),
                //         ),
                //         ListTile(
                //           leading: Text("List2"),
                //         ),
                //         ListTile(
                //           leading: Text("List3"),
                //         ),
                //         ListTile(
                //           leading: Text("List4"),
                //         ),
                //       ],
                //     ),
                //   ),
                // );

                //getx
                Get.bottomSheet(
                  Container(
                    color: Colors.teal,
                    height: 200,
                    child: ListView(
                      children: [
                        ListTile(
                          textColor: Colors.white,
                          leading: Text("List1"),
                        ),
                        ListTile(
                          textColor: Colors.white,
                          leading: Text("List2"),
                        ),
                        ListTile(
                          textColor: Colors.white,
                          leading: Text("List3"),
                        ),
                        ListTile(
                          textColor: Colors.white,
                          leading: Text("List4"),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Text("Open Bottom Sheet"),
            ),
          ],
        ),
      ),
    );
  }
}
