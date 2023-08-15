import 'package:amazon_mvvm_clone/domain/auth/auth_failure.dart';
import 'package:amazon_mvvm_clone/domain/auth/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

abstract class IAuthFacade {
  Future<Either<AuthFailure, http.Response>> signupWithEmailAndPassword({
    required EmailAddress emailAddress,
    required FullName fullName,
    required Password password,
  });
  Future<Either<AuthFailure, http.Response>> signinWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, http.Response>> singinWithPhoneNumber({
    required PhoneNumber phoneNumber,
    required PhoneCode phoneCode,
  });

  Future<Either<AuthFailure, http.Response>> authoriseUser({
    required TokenKey tokenKey,
  });
  Future<Either<AuthFailure, http.Response>> authoriseAdmin({
    required TokenKey tokenKey,
  });

  Future<bool> logout({required String loginKey});

  //  Future<Either<AuthFailure, http.Response>> deleteUser({
  //   required TokenKey tokenKey,
  //    required Password password,
  // });
}
