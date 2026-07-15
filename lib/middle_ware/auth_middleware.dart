import '../routes/routes.dart';
import '../utils/import_export.dart';

class AuthMiddleware extends GetMiddleware {
  bool get _isLogin => false; // TODO: Update with actual auth check

  @override
  RouteSettings? redirect(String? route) {
    if (!_isLogin) {
      return RouteSettings(name: Routes.dashBoardPage);
    }
    return null;
  }
}
