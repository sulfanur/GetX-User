import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../user_list/views/user_list_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent, // Warna solid untuk AppBar
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Get.to(UserListView());
            },
            style: ElevatedButton.styleFrom(
               backgroundColor: Colors.blueAccent,
               foregroundColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              textStyle: TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.normal,
              ),
            ),
            child: Text('Go to User List'),
          ),
        ),
      ),
    );
  }
}
