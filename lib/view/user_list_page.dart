import '../controller/user_controller.dart';
import '../services/database_service/tbl_user.dart';
import '../utils/import_export.dart';
import 'add_user_list.dart';

class UserListPage extends StatelessWidget {
  UserListPage({super.key});

  final UserController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
        actions: [
          IconButton(
            onPressed: () async {
              await Get.to(() => AddUserPage());
            },
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
                    subtitle: Text(
                      userController.userlist[index][TblUser
                          .userPhone],
                    ),
                    trailing:Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () async {
                            await Get.to(() => AddUserPage());
                          },
                          icon: Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () async {
                            await userController.deleteUser(
                              userController.userlist[index][TblUser
                                  .userID],
                            );
                          },
                          icon: Icon(Icons.delete),
                        ),
                      ],
                    ),

                  );
                },
                itemCount: userController.userlist.length,
              );
      }),
    );
  }
}
