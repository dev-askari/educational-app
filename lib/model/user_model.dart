class UserModel{
  String userName = "";

  UserModel({required this.userName});


  @override
  String toString() {
    return 'UserModel{userName: $userName}';
  }

}