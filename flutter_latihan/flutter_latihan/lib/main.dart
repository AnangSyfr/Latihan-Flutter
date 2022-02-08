import 'package:flutter/material.dart';
import 'package:flutter_latihan/widgets/lat_textfield.dart';
import 'widgets/lat_dropdown.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: lat_dropdown(),
    );
  }
}
