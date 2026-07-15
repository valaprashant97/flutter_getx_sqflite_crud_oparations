import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../controller/user_controller.dart';

class AddUserPage extends StatefulWidget {
  const AddUserPage({super.key});

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add User Page"),
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
                await userController.addUser(
                  _nameController.text,
                  _phoneController.text,
                  _emailController.text,
                );
                Get.back();
              },
              child: const Text("Add User"),
            ),
          ],
        ),
      ),
    );
  }
}