import 'dart:convert';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StatePersistance {
  void saveUserLoginKey({required Response res}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(
        "loginKey", jsonDecode(res.body)['token']);
  }

  Future<bool> deleteUserLoginKey({required String key}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.remove(key);
  }

  Future<String?> getUserLoginKey({required String key}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? userLoginKey = sharedPreferences.getString(key);
    if (userLoginKey == null) {
      return null;
    }
    return userLoginKey;
  }
}
