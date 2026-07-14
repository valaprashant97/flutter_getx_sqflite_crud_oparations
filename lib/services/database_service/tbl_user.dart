class TblUser {
  static const String tblUser = 'TblUser';
  static const String userID = 'userID';
  static const String userName = 'userName';

  static String get createTable =>
      'CREATE TABLE $tblUser($userID INTEGER PRIMARY KEY AUTOINCREMENT, $userName TEXT)';

  static String get getUserList => 'SELECT * FROM $tblUser';
}
