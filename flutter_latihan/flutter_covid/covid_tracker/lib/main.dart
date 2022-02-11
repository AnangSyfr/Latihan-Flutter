import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as conn;
import 'models/SummaryModel.dart';
import './widget/summary.dart';
import './pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
