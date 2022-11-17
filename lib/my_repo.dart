import 'package:api_test/api_result.dart';
import 'package:api_test/network_exception.dart';
import 'package:api_test/web_services.dart';

import 'user.dart';

class MyRepo {
  final WebServices webServices;
  MyRepo(this.webServices);
  final String token =
      'Bearer 269bd7709b66a4405b29fb2c7186bd5ec4cd49d03dce89253a8601c243c99107';
  //Get User // same Fun with Implementation
  Future<ApiResult<List<User>>> getUsers() async {
    try {
      var response = await webServices.getUsers();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }

  Future<ApiResult<User>> createNewUser(User newUser) async {
    try {
      var response = await webServices.createNewUser(newUser, token);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }

  Future<ApiResult<dynamic>> deleteUser(String id) async {
    try {
      var response = await webServices.deleteUser(id, token);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }

  // Future<User> getUserByID(int id) async {
  //   return await webServices.getUserByID(id);
  // }

  // Future<User> createNewUser(User newUser) async {
  //   return await webServices.createNewUser(newUser,
  //       'Bearer 269bd7709b66a4405b29fb2c7186bd5ec4cd49d03dce89253a8601c243c99107');
  // }

  // Future<dynamic> deleteUser(String id) async {
  //   return await webServices.deleteUser(id,
  //       'Bearer 269bd7709b66a4405b29fb2c7186bd5ec4cd49d03dce89253a8601c243c99107');
  // }
}
