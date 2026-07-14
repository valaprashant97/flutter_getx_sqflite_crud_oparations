
import 'package:get/get.dart';

import '../services/database_service/sqlite_database.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SqliteDatabase());
  }
}
