import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth.dart';
import 'package:get_storage/get_storage.dart';

class LoginPage extends StatelessWidget {
  final authC = Get.put(Auth());
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: authC.username,
              autocorrect: false,
              decoration: InputDecoration(label: Text("Username")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(
              () => TextField(
                controller: authC.password,
                autocorrect: false,
                obscureText: authC.isHidden.value,
                decoration: InputDecoration(
                  label: Text("Password"),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: () => authC.isHidden.toggle(),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () => authC.login(), child: Text("Login")),
          )
        ],
      ),
    );
  }
}
