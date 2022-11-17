import 'package:api_test/user.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'web_services.g.dart';

@RestApi(baseUrl: 'https://gorest.co.in/public/v2/')
abstract class WebServices {
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;
  @GET('users')
  Future<List<User>> getUsers();
  @GET('users/{id}')
  Future<User> getUserByID(@Path() int id);
  @DELETE('users/{id}')
  Future<dynamic> deleteUser(@Path() String id, @Header('Authorization') String token);
  @POST('users')
  Future<User> createNewUser(
      @Body() User newUser, @Header('Authorization') String token);
}
