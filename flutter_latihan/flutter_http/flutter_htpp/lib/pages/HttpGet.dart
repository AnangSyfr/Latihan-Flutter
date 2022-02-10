import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myHttp;

class HttpGet extends StatefulWidget {
  const HttpGet({Key? key}) : super(key: key);

  @override
  State<HttpGet> createState() => _HttpGetState();
}

class _HttpGetState extends State<HttpGet> {
  late String name;
  late String email;
  late String images;
  @override
  void initState() {
    // TODO: implement initState
    name = '';
    email = '';
    images = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP GET"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name : $name"),
            Text("Email : $email"),
            Text("Images : $images"),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () async {
                  var myResponse = await myHttp
                      .get(Uri.parse("https://reqres.in/api/users/2"));
                  if (myResponse.statusCode == 200) {
                    print("Success....");
                    Map<String, dynamic> data =
                        json.decode(myResponse.body) as Map<String, dynamic>;
                    setState(() {
                      name =
                          "${data['data']['first_name']} ${data['data']['last_name']}";
                      email = "${data['data']['email']}";
                      images = "${data['data']['avatar']}";
                    });
                  }
                  // var resp = jsonEncode(body);
                },
                child: Text("Get Data"))
          ],
        ),
      ),
    );
  }
}
