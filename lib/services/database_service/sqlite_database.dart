import 'package:flutter_getx_sqflite_crud_oparations/services/database_service/tbl_user.dart';
import 'package:sqflite/sqflite.dart';
import 'database_services.dart';

class SqliteDatabase extends DatabaseServices {
  static const String dbName = 'crud.db';
  int version = 1;

  @override
  Future<Database> initDatabase() async {
    return await openDatabase(
      '${await getDatabasesPath()}/$dbName',
      version: version,
      onCreate: (db, version) {
        db.execute(TblUser.createTable);
      },
    );
  }

  @override
  Future<List<Map<String, dynamic>>> readData(
    String query, [List<dynamic>? arguments]
  ) async {
    return await (await initDatabase()).rawQuery(query, arguments);
  }

  @override
  Future<int> deleteData(
      String query, [List<dynamic>? arguments]
      ) async {
    return await (await initDatabase()).rawDelete(query, arguments);
  }

  @override
  Future<int> insertData(
      String query, [List<dynamic>? arguments]
      ) async {
    return await (await initDatabase()).rawInsert(query, arguments);
  }

  @override
  Future<int> updateData(
      String query, [List<dynamic>? arguments]
      ) async {
    return await (await initDatabase()).rawUpdate(query, arguments);
  }

}
