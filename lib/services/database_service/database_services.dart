import 'package:sqflite/sqflite.dart';

abstract class DatabaseServices {
  static const String dbName = 'crud.db';
  int version = 1;

  Future<Database> initDatabase();

  Future<List<Map<String, dynamic>>> readData(String query);

  void deleteData() {}

  void updateData() {}

  void insertData() {}
}
