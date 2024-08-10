import 'package:flutter/material.dart';
import '../../../data/model/user_model.dart';

class UserDetailView extends StatelessWidget {
  final User user;

  UserDetailView({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${user.firstName} ${user.lastName}",
          style: TextStyle(fontFamily: 'Poppins'),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(user.avatar),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Name: ${user.firstName} ${user.lastName}",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Email: ${user.email}",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
