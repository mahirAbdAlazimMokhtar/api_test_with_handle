import 'package:flutter/cupertino.dart';
import '../user.dart';

@immutable
abstract class MyState {}

class MyInitial extends MyState {}

class GetAllUsers extends MyState {
  final List<User> allUsersList;
  GetAllUsers(this.allUsersList);
}

class GetUserDetails extends MyState {
  final User user;
  GetUserDetails(this.user);
}
class CreateNewUser extends MyState {
  final User user;
  CreateNewUser(this.user);
}
class DeleteUser extends MyState {
  final dynamic data;
  DeleteUser(this.data);
}
