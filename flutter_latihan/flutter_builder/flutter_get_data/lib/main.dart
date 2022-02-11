import 'dart:convert';

import 'package:flutter/material.dart';
import './models/user.dart';
import 'package:http/http.dart' as conn;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  // List<Map<String, dynamic>> data = [];
  List<UserModel> data = [];
  Future getAllUser() async {
    try {
      var res = await conn.get(Uri.parse("https://reqres.in/api/users"));
      List resData = (json.decode(res.body) as Map<String, dynamic>)["data"];
      resData.forEach((element) {
        data.add(UserModel.fromJson(element));
      });
    } catch (e) {
      print("Terjadi Kesalahan");
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: FutureBuilder(
          future: getAllUser(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: Text("Loading....."));
            } else {
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    backgroundImage: NetworkImage("${data[index].avatar}"),
                  ),
                  title:
                      Text("${data[index].firstName} ${data[index].lastName}"),
                  subtitle: Text("${data[index].email}"),
                ),
              );
            }
          }),
    );
  }
}
