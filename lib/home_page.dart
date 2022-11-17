import 'package:api_test/my/my_cubit.dart';
import 'package:api_test/my/my_state.dart';
import 'package:api_test/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User user = User();

  @override
  void initState() {
    super.initState();
    //BlocProvider.of<MyCubit>(context).emitGetAllUsers();
    BlocProvider.of<MyCubit>(context).emitDeleteUser('1185');
    // BlocProvider.of<MyCubit>(context).emitCreateNewUser(
    //   User(
    //      email: 'mahr.bwb@gmail.com',
    //      gender: 'male',
    //      id: 20,
    //      name: 'Mahir',
    //      status: 'Active'

    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        children: [
          // BlocBuilder<MyCubit, MyState>(
          //   builder: (context, state) {
          //     if (state is GetAllUsers) {
          //       List<User> userList = [];
          //       userList = (state).allUsersList;
          //       return ListView.builder(
          //         shrinkWrap: true,
          //         itemCount: userList.length,
          //         itemBuilder: (context, index) {
          //           return Container(
          //             width: double.infinity,
          //             color: Colors.amber,
          //             child: Center(child: Text(userList[index].email.toString())),
          //           );
          //         },
          //       );
          //     } else {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     }
          //   },
          // )
          BlocBuilder<MyCubit, MyState>(
            builder: (context, state) {
              if (state is DeleteUser) {
                //userList = (state).allUsersList;
                //user = (state).user;

                return Container(
                  width: double.infinity,
                  color: Colors.amber,
                  child: Center(child: Text((state).data.toString())),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
