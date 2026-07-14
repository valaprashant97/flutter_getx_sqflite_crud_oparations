
import 'package:flutter_getx_sqflite_crud_oparations/routes/routes.dart';
import 'package:get/get.dart';

import '../binding/user_binding.dart';
import '../middle_ware/auth_middleware.dart';
import '../view/login_page.dart';
import '../view/user_list_page.dart';

class AppRoutes {
  static var appRoutes = [
    GetPage(
      name: Routes.homePage,
      page: () => LoginPage(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: Routes.dashBoardPage,
      page: () => UserListPage(),
      binding: UserBinding(),
    ),
  ];
}
