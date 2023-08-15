import 'package:amazon_mvvm_clone/domain/auth/value_object.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part "user.freezed.dart";

@freezed
abstract class User with _$User {
  const factory User({
    required UniqueId uid,
    required FullName fullName,
    required EmailAddress emailAddress,
    required Address address,
    required UserType userType,
  }) = _User;
}
