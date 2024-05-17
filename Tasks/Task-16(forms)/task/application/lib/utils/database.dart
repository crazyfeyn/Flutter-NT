class DataBase {
  // DataBase({required this.name, required this.email, required this.password});

  static List<Map<String, dynamic>> userDataBase = [];

  static showUserData() {
    return userDataBase;
  }
}
