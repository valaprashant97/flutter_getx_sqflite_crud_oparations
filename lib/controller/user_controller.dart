
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

  @override
  void onInit() {
    super.onInit();
    readUserData();
  }
}
