import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/Counter.dart';

class CounterPage extends StatelessWidget {
  Counter CounterC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${CounterC.data}",
                style: TextStyle(fontSize: 50),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      CounterC.increment();
                    },
                    child: Text("+")),
                ElevatedButton(
                    onPressed: () {
                      CounterC.decrement();
                    },
                    child: Text("-")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
