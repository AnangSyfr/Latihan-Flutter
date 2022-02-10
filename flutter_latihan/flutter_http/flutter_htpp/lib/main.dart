import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myHttp;
import './pages/HttpGet.dart';
import './pages/HttpPost.dart';
import './pages/HttpPut.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HttpDelete(),
    );
  }
}

class HttpDelete extends StatefulWidget {
  @override
  _HttpDeleteState createState() => _HttpDeleteState();
}

class _HttpDeleteState extends State<HttpDelete> {
  String dataAwal = "Belum ada data";
  @override
  void initState() {
    dataAwal = "Belum ada data";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP DELETE"),
        actions: [
          IconButton(
              onPressed: () async {
                var response = await myHttp
                    .get(Uri.parse("https://reqres.in/api/users/2"));
                Map<String, dynamic> data = json.decode(response.body);
                setState(() {
                  dataAwal = "${data['data']}";
                });
              },
              icon: Icon(Icons.get_app))
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(dataAwal),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () async {
                var response = await myHttp
                    .delete(Uri.parse("https://reqres.in/api/users/2"));
                print(response.statusCode);
                setState(() {
                  dataAwal = "Data Telah Dihapus";
                });
              },
              child: Text("Hapus Data")),
        )
      ]),
    );
  }
}
