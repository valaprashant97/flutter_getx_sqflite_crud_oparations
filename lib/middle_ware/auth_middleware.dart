
import 'package:get/get_navigation/src/routes/route_middleware.dart';

import '../routes/routes.dart';
import '../utils/import_export.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    bool isLogin = false;
    return !isLogin
        ? RouteSettings(name: Routes.dashBoardPage)
        : null;
  }
}
