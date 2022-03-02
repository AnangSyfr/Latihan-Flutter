import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../../../data/models/users_model.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Users>>(
        future: controller.getAllUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.data?.length == 0) {
            return Center(
              child: Text("Tidak ada data"),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                Users user = snapshot.data![index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar!),
                  ),
                  title: Text("${user.firstName} ${user.lastName}"),
                  subtitle: Text("${user.email}"),
                );
              },
            );
          }
        },
      ),
    );
  }
}
