import 'package:flutter/material.dart';
import 'widgets/lat_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: lat_drawer(),
    );
  }
}
