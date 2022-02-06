import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'widgets/soal_1.dart';
import 'widgets/soal_2.dart';
import 'widgets/soal_3.dart';
import 'widgets/soal_4.dart';
import 'widgets/soal_5.dart';
import 'widgets/soal_6.dart';
import 'widgets/soal_7.dart';
import 'widgets/soal_10.dart';
import 'widgets/soal_11.dart';
import 'widgets/soal_15.dart';
import 'widgets/soal_16.dart';
import 'widgets/soal_17.dart';
import 'widgets/soal_18.dart';
import 'widgets/soal_19.dart';
import 'widgets/soal_20.dart';
import 'widgets/soal_21.dart';
import 'widgets/soal_22.dart';
import 'widgets/soal_23.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: soal_23(),
    );
  }
}
