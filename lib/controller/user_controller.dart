
import 'package:get/get.dart';

import '../services/database_service/sqlite_database.dart';
import '../services/database_service/tbl_user.dart';

class UserController extends GetxController {
  List<Map<String, dynamic>> userlist =
      <Map<String, dynamic>>[].obs;

  SqliteDatabase db = Get.find();

  Future<void> readUserData() async {
    userlist.clear();
    userlist.addAll(await db.readData(TblUser.getUserList));
  }

  Future<void> addUser(String name, String phone, String email) async {
    await db.insertData(TblUser.insertUser, [name, phone, email]);
    readUserData();
  }

  Future<void> deleteUser(int id) async {
    await db.deleteData(TblUser.deleteUser, [id]);
    readUserData();
  }

  Future<void> updateUser(int id, String name, String phone, String email) async {
    await db.updateData(TblUser.updateUser, [name, phone, email, id]);
    readUserData();
  }


  @override
  void onInit() {
    super.onInit();
    readUserData();
  }
}
