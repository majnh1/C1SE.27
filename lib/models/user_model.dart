class UserModel {
  String? id;
  String? name;
  String? avatar;
  String? comment;
  String? userID;

  UserModel({
    this.id,
    this.name,
    this.userID,
    this.avatar,
    this.comment,
  });
}

List<UserModel> users = [
  UserModel()
    ..id = '1'
    ..userID = '1'
    ..name = 'John'
    ..avatar = 'assets/images/default_avatar.png'
    ..comment = 'So Delicious',
  UserModel()
    ..id = '2'
    ..userID = '2'
    ..name = 'Thẩm diệu'
    ..avatar = 'assets/images/default_avatar.png'
    ..comment = 'Nhìn ngon quá chủ thớt ơiiiiii!',
  UserModel()
    ..id = '3'
    ..userID = '3'
    ..name = 'Thanh Hàn'
    ..avatar = 'assets/images/default_avatar.png'
    ..comment = 'Sao không thấy ngon nhỉ ?',
];
