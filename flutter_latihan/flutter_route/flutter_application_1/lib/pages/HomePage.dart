import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/Counter.dart';
import './UsersPage.dart';
import './CounterPage.dart';
import '../controllers/Counter.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Routing"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Dashboard Page"),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => UsersPage(),
                // ));
                Get.to(UsersPage());
              },
              child: Text("Users Button"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => UsersPage(),
                // ));
                // Get.to(
                //   () => CounterPage(),
                //   binding: BindingsBuilder.put(() => Counter()),
                // );
                Get.toNamed("/counters");
              },
              child: Text("Couter Button"),
            ),
          ],
        ),
      ),
    );
  }
}
