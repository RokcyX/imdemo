class LoginInfoModel {
  String token;
  String userId;

  static fromMap(Map json) {
    LoginInfoModel model = LoginInfoModel();
    model.token = json['token'];
    model.userId = json['userId'];
    return model;
  }
}