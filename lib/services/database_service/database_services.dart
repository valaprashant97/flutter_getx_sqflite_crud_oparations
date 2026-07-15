import 'package:sqflite/sqflite.dart';

abstract class DatabaseServices {
  Future<Database> initDatabase();

  Future<List<Map<String, dynamic>>> readData(String query, [List<dynamic>? arguments]);

  Future<int> deleteData(String query, [List<dynamic>? arguments]);

  Future<int> updateData(String query, [List<dynamic>? arguments]);

  Future<int> insertData(String query, [List<dynamic>? arguments]);
}
