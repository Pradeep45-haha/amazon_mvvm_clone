import 'dart:async';
import 'dart:convert';
import 'package:amazon_mvvm_clone/domain/auth/auth_failure.dart';
import 'package:amazon_mvvm_clone/domain/auth/value_object.dart';
import 'package:amazon_mvvm_clone/domain/data_model/user.dart';
import 'package:amazon_mvvm_clone/infrastructure/local_storage/state_persistance/state_persistance.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import '../../constants/global_variables.dart';
import '../../domain/auth/i_auht_facade.dart';
import 'package:http/http.dart' as http;

class AuthFacade implements IAuthFacade {
  @override
  Future<Either<AuthFailure, http.Response>> signinWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    User user = User(
      token: "",
      id: "",
      name: "",
      password: password.getOrCrash(),
      email: emailAddress.getOrCrash(),
      type: "",
    );
    try {
      http.Response response = await http.post(
        Uri.parse("$uri/api/signin"),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (response.statusCode == 200) {
        return right(response);
      }
      Map<String, dynamic> result = jsonDecode(response.body);

      if (result["msg"].toString() == "INCORRECT_PASSWORD") {
        return left(
          const AuthFailure.incorrectPassword(),
        );
      }
      if (result["msg"].toString() == "EMAIL_DOES_NOT_EXISTS") {
        return left(
          const AuthFailure.noSuchEmail(),
        );
      }
      return left(
        const AuthFailure.serverError(),
      );
    } catch (e) {
      if (e is http.Response) {
        String result = e.body;
        Map<String, dynamic> temp = jsonDecode(result);
        if (temp["msg"].toString() == "INCORRECT_PASSWORD") {
          return left(const AuthFailure.incorrectPassword());
        }
        if (temp["msg"].toString() == "EMAIL_DOES_NOT_EXISTS") {
          return left(
            const AuthFailure.noSuchEmail(),
          );
        }
      }
      return left(
        const AuthFailure.serverError(),
      );
    }
  }

  @override
  Future<Either<AuthFailure, http.Response>> signupWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required FullName fullName,
  }) async {
    debugPrint("0");
    User user = User(
      token: "",
      id: "",
      name: fullName.getOrCrash(),
      password: password.getOrCrash(),
      email: emailAddress.getOrCrash(),
      type: "",
    );
    debugPrint(user.toString());
    debugPrint("data added 0-1");
    try {
      debugPrint(user.toJson());
      debugPrint("1");
      http.Response response = await http.post(
        Uri.parse("$uri/api/signup"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: user.toJson(),
      );
      if (response.statusCode == 200) {
        return right(response);
      }
      Map<String, dynamic> result = jsonDecode(response.body);
      if (result["msg"].toString() == "EMAIL_IN_USE") {
        return left(
          const AuthFailure.emailInUse(),
        );
      } else {
        return left(
          const AuthFailure.serverError(),
        );
      }
    } catch (e) {
      if (e is http.Response) {
        String result = e.body;
        Map<String, dynamic> temp = jsonDecode(result);

        if (temp["msg"].toString() == "EMAIL_IN_USE") {
          return left(
            const AuthFailure.emailInUse(),
          );
        }
      }
      return left(
        const AuthFailure.serverError(),
      );
    }
  }

  @override
  Future<Either<AuthFailure, http.Response>> singinWithPhoneNumber({
    required PhoneNumber phoneNumber,
    required PhoneCode phoneCode,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, http.Response>> authoriseUser({
    required TokenKey tokenKey,
  }) async {
    User user = User(
      token: tokenKey.getOrCrash(),
      id: "",
      name: "",
      password: "",
      email: "",
      type: "",
    );
    try {
      http.Response response = await http
          .post(Uri.parse("$uri/api/authoriseUser"), headers: <String, String>{
        "Content-Type": "application/json; charset=UTF-8",
        "loginToken": user.token,
      });

      if (response.statusCode == 200) {
        return right(response);
      }

      return left(const AuthFailure.serverError());
    } catch (e) {
      if (e is http.Response) {
        return left(const AuthFailure.authorisationFailed());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<bool> logout({required String loginKey}) async {
    StatePersistance statePersistance = StatePersistance();
    return statePersistance.deleteUserLoginKey(key: loginKey);
  }

  @override
  Future<Either<AuthFailure, http.Response>> authoriseAdmin(
      {required TokenKey tokenKey}) async {
    try {
      http.Response response = await http
          .post(Uri.parse('$uri/api/authoriseAdmin'), headers: <String, String>{
        "Content-Type": "application/json; charset=UTF-8",
        "loginToken": tokenKey.getOrCrash(),
      });
       debugPrint("from authFacade admin authorisation ${jsonDecode(response.body).toString()}");
      if (response.statusCode == 200) {
        return right(response);
      }
      
      Map<String, dynamic> result = jsonDecode(response.body);
      if (result["msg"].toString() == "NO_AUTH_TOKEN" ||
          result["msg"].toString() == "INVALID_TOKEN" ||
          result["msg"].toString() == "USER_IS_NOT_ADMIN") {
        return left(const AuthFailure.adminAuthorisationFailed());
      }
      return left(const AuthFailure.serverError());
    } catch (e) {
      if (e is http.Response) {
        Map<String, dynamic> result = jsonDecode(e.body);

        if (result["msg"].toString() == "NO_AUTH_TOKEN" ||
            result["msg"].toString() == "INVALID_TOKEN" ||
            result["msg"].toString() == "USER_IS_NOT_ADMIN") {
          return left(const AuthFailure.adminAuthorisationFailed());
        }
      }
      return left(const AuthFailure.serverError());
    }
  }
}
