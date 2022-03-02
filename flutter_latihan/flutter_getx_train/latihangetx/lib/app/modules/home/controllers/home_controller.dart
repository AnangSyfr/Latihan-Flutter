import 'package:get/get.dart';
import '../../../data/providers/users_provider.dart';
import '../../../data/models/users_model.dart';

class HomeController extends GetxController {
  UsersProvider userP = UsersProvider();

  Future<Users?> getUser(int id) async {
    return await userP.getUser(id);
  }

  Future<List<Users>> getAllUsers() async {
    return await userP.getAllUsers();
  }
}
