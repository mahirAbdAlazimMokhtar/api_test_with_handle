import 'package:api_test/network_exception.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_state.freezed.dart';
@freezed
class ResultState<T> with _$ResultState<T> {
  const factory ResultState.idle() = Idle<T>;
  const factory ResultState.loading() = Loading<T>;
  const factory ResultState.success(T data) = Success<T>;
  const factory ResultState.error(NetworkExceptions networkExceptions) = Error<T>;
}














// @immutable
// abstract class MyState {}

// class MyInitial extends MyState {}

// class GetAllUsers extends MyState {
//   final List<User> allUsersList;
//   GetAllUsers(this.allUsersList);
// }

// class GetUserDetails extends MyState {
//   final User user;
//   GetUserDetails(this.user);
// }
// class CreateNewUser extends MyState {
//   final User user;
//   CreateNewUser(this.user);
// }
// class DeleteUser extends MyState {
//   final dynamic data;
//   DeleteUser(this.data);
// }
