import 'package:api_test/web_services.dart';

import 'user.dart';

class MyRepo {
  final WebServices webServices;
  MyRepo(this.webServices);

  //Get User // same Fun with Implementation
  Future<List<User>> getUsers() async {
    return await webServices.getUsers();
  }

  Future<User> getUserByID(int id) async {
    return await webServices.getUserByID(id);
  }

  Future<User> createNewUser(User newUser) async {
    return await webServices.createNewUser(newUser,
        'Bearer 269bd7709b66a4405b29fb2c7186bd5ec4cd49d03dce89253a8601c243c99107');
  }
  Future<dynamic> deleteUser(String id) async {
    return await webServices.deleteUser(id,
        'Bearer 269bd7709b66a4405b29fb2c7186bd5ec4cd49d03dce89253a8601c243c99107');
  }
}
