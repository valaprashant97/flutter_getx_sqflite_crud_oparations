import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../controller/user_controller.dart';
import '../services/database_service/tbl_user.dart';

class AddUserPage extends StatefulWidget {
  final Map<String, dynamic>? user;
  const AddUserPage({super.key, this.user});

  @override
  State<AddUserPage> createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  /// text editing controller
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  UserController userController = Get.find();


  @override
  void initState() {
    super.initState();
    if (widget.user != null) {
      _nameController.text = widget.user![TblUser.userName];
      _phoneController.text = widget.user![TblUser.userPhone];
      _emailController.text = widget.user![TblUser.userEmail];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.user == null ? "Add User Page" : "Update User Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // First Name Input
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            const SizedBox(height: 10),

            // Phone Input
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(labelText: "Phone"),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 10),

            // Email Input
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: "Email"),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 30),

            // Save Button
              ElevatedButton(
              onPressed: () async {
                if (widget.user == null) {
                  await userController.addUser(
                    _nameController.text,
                    _phoneController.text,
                    _emailController.text,
                  );
                } else {
                  await userController.updateUser(
                    widget.user![TblUser.userID],
                    _nameController.text,
                    _phoneController.text,
                    _emailController.text,
                  );
                }
                Get.back();
              },
              child: Text(widget.user == null ? "Add User" : "Update User"),
            ),
          ],
        ),
      ),
    );
  }
}