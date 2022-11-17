import 'package:api_test/api_result.dart';
import 'package:api_test/my_repo.dart';
import 'package:api_test/network_exception.dart';
import 'package:api_test/user.dart';
import 'package:bloc/bloc.dart';

import 'package:api_test/my/my_state.dart';

class MyCubit extends Cubit<ResultState<User>> {
  final MyRepo myRepo;
  MyCubit(this.myRepo) : super(const Idle());

  // void emitGetAllUser() async {
  //   var data = await myRepo.getUsers();
  //   data.when(success: ((List<User> allUsers) {
  //     emit(ResultState.success(allUsers));
  //   }), failure: (NetworkExceptions networkExceptions) {
  //     emit(ResultState.error(networkExceptions));
  //   });
  // }

  void emitCreateNewUser(User newUser) async {
    var data = await myRepo.createNewUser(newUser);
    data.when(success: ((data) {
      emit(ResultState.success(data));
    }), failure: ((networkExceptions) {
      emit(ResultState.error(networkExceptions));
    }));
  }

  // void emitGetAllUsers() {
  //   myRepo.getUsers().then((userList) => emit(GetAllUsers(userList)));
  // }
  // void emitGetUserDetails(int id) {
  //   myRepo.getUserByID(id).then((userDetails) => emit(GetUserDetails(userDetails)));
  // }
  // void emitCreateNewUser(User newUser) {
  //   myRepo.createNewUser(newUser).then((newUser) => emit(CreateNewUser(newUser)));
  // }
  // void emitDeleteUser(String id ){
  //   myRepo.deleteUser(id).then((deleteUser) => emit(DeleteUser(deleteUser)));
  // }

}
