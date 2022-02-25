import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/Counter.dart';
import 'package:get/get.dart';
import './pages/CounterPage.dart';
import './pages/ProfilePage.dart';
import './pages/HomePage.dart';
import './pages/ProfilePage.dart';
import './pages/UsersPage.dart';

import './bindings/counter_binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      // routes: {
      //   "home": (context) => HomePage(),
      // },
      getPages: [
        GetPage(
          name: "/home",
          page: () => HomePage(),
        ),
        GetPage(
          name: "/profile",
          page: () => ProfilePage(),
        ),
        GetPage(
          name: "/users",
          page: () => UsersPage(),
        ),
        GetPage(
          name: "/counters",
          page: () => CounterPage(),
          binding: CounterBinding(),
        ),
      ],
    );
  }
}
