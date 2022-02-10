import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myHttp;

class HttpPost extends StatefulWidget {
  const HttpPost({Key? key}) : super(key: key);

  @override
  _HttpPostState createState() => _HttpPostState();
}

class _HttpPostState extends State<HttpPost> {
  TextEditingController cName = TextEditingController();
  TextEditingController cJobs = TextEditingController();
  String responsData = "Belum Ada Respon";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP POST"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: cName,
            autocorrect: false,
            decoration: InputDecoration(label: Text("Name")),
          ),
          TextField(
            controller: cJobs,
            autocorrect: false,
            decoration: InputDecoration(label: Text("Jobs")),
          ),
          ElevatedButton(
              onPressed: () async {
                var bodyResp = await myHttp.post(
                  Uri.parse("https://reqres.in/api/users"),
                  body: {"name": cName.text, "jobs": cJobs.text},
                );
                Map<String, dynamic> data =
                    json.decode(bodyResp.body) as Map<String, dynamic>;
                setState(() {
                  responsData = "${data} ${data['name']}";
                });
              },
              child: Text("Simpan")),
          Divider(),
          Text("POST DATA : ${cName.text} ${cJobs.text}"),
          Text(responsData),
        ],
      ),
    );
  }
}
