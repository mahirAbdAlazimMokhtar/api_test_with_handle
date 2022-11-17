import 'package:api_test/my_repo.dart';
import 'package:api_test/user.dart';
import 'package:bloc/bloc.dart';

import 'package:api_test/my/my_state.dart';

class MyCubit extends Cubit<MyState> {
  final MyRepo myRepo;
  MyCubit(this.myRepo) : super(MyInitial());
  void emitGetAllUsers() {
    myRepo.getUsers().then((userList) => emit(GetAllUsers(userList)));
  }
  void emitGetUserDetails(int id) {
    myRepo.getUserByID(id).then((userDetails) => emit(GetUserDetails(userDetails)));
  }
  void emitCreateNewUser(User newUser) {
    myRepo.createNewUser(newUser).then((newUser) => emit(CreateNewUser(newUser)));
  } 
  void emitDeleteUser(String id ){
    myRepo.deleteUser(id).then((deleteUser) => emit(DeleteUser(deleteUser)));
  }
  
}
