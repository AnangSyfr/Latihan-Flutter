import 'package:get/get.dart';

import '../models/users_model.dart';

class UsersProvider extends GetConnect {
  Future<Users?> getUser(int id) async {
    final response = await get('https://reqres.in/api/users/$id');
    return Users.fromJson(response.body["data"]);
  }

  Future<List<Users>> getAllUsers() async {
    final response = await get('https://reqres.in/api/users');
    return Users.fromJsonList(response.body["data"]);
  }
}
