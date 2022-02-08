import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class lat_textfield extends StatefulWidget {
  @override
  State<lat_textfield> createState() => _lat_textfieldState();
}

class _lat_textfieldState extends State<lat_textfield> {
  @override
  bool isHidden = true;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: FlutterLogo(),
          padding: EdgeInsets.all(10),
        ),
        title: Text("Flutter App"),
        actions: [
          IconButton(
              onPressed: () {
                print("Klik More");
              },
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Center(
            child: Text(
              "Login Here",
              style: TextStyle(fontSize: 30),
            ),
          ),
          TextField(
            controller: username,
            autocorrect: false,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              label: Text("Username"),
              prefixIcon: Icon(Icons.people),
            ),
          ),
          TextField(
            controller: password,
            autocorrect: false,
            obscureText: isHidden,
            decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.vpn_key),
                suffixIcon: IconButton(
                    onPressed: () {
                      if (isHidden == true) {
                        isHidden = false;
                      } else {
                        isHidden = true;
                      }
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                    ))),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                print("Username anda ${username.text}");
              },
              child: Text("LOGIN"))
        ],
      ),
    );
  }
}
