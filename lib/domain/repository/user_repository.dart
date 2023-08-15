import '../data_model/user.dart';

class UserRepository {
  User _user = User(
    token: "",
    id: "",
    name: "",
    password: "",
    email: "",
    type: "",
  );

  get getUser {
    return _user;
  }

   setUser(String value) {
    _user =User.fromJson(value);
  }

 
}
