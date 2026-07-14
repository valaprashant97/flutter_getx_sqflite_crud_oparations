import '../controller/user_controller.dart';
import '../services/database_service/tbl_user.dart';
import '../utils/import_export.dart';

class UserListPage extends StatelessWidget {
  UserListPage({super.key});

  UserController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Obx(() {
        return userController.userlist.isEmpty
            ? Center(
                child: Text(
                  'No User Found',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.grey.shade400,
                  ),
                ),
              )
            : ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      userController.userlist[index][TblUser
                          .userName],
                    ),
                  );
                },
                itemCount: userController.userlist.length,
              );
      }),
    );
  }
}
