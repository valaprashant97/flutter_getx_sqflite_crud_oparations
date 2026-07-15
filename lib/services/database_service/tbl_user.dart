class TblUser {
  static const String tblUser = 'TblUser';
  static const String userID = 'userID';
  static const String userName = 'userName';
  static const String userPhone = 'userPhone';
  static const String userEmail = 'userEmail';


  static String get createTable =>
      'CREATE TABLE $tblUser($userID INTEGER PRIMARY KEY AUTOINCREMENT, $userName TEXT, $userPhone TEXT, $userEmail TEXT )';

  static String get getUserList => 'SELECT * FROM $tblUser';
  static String get deleteUser => 'DELETE FROM $tblUser WHERE $userID = ?';
  static String get updateUser => 'UPDATE $tblUser SET $userName = ?, $userPhone = ?, $userEmail = ? WHERE $userID = ?';
  static String get insertUser => 'INSERT INTO $tblUser($userName, $userPhone, $userEmail) VALUES(?, ?, ?)';
}
