import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/user_list_controller.dart';
import 'user_detail_view.dart';

class UserListView extends StatelessWidget {
  final UserListController userController = Get.put(UserListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User List',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent,
          ),
        ),
      ),
      body: Obx(() {
        if (userController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: userController.userList.length,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 5,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(userController.userList[index].avatar),
                  ),
                  title: Text(
                    "${userController.userList[index].firstName} ${userController.userList[index].lastName}",
                    style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    userController.userList[index].email,
                    style: TextStyle(fontFamily: 'Poppins', fontStyle: FontStyle.italic),
                  ),
                  onTap: () {
                    Get.to(UserDetailView(user: userController.userList[index]));
                  },
                ),
              );
            },
          );
        }
      }),
    );
  }
}
