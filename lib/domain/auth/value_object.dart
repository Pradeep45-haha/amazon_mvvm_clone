import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';
import '../../core/auth/failures.dart';
import '../../core/auth/value_objects.dart';
import '../../core/auth/value_validator.dart';

@immutable
class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}

class TokenKey extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  const TokenKey._(this.value);
  factory TokenKey(String input) {
    return TokenKey._(validateTokenKey(input));
  }
}

class PhoneNumber extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory PhoneNumber(int input) {
    return PhoneNumber._(validatePhoneNumber(input));
  }
  const PhoneNumber._(this.value);
}

class PhoneCode extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory PhoneCode(int input) {
    return PhoneCode._(validatePhoneCode(input));
  }
  const PhoneCode._(this.value);
}

class FullName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FullName(String value) {
    return FullName._(validateFullName(value));
  }

  const FullName._(this.value);
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory UniqueId() {
    String value = const Uuid().v1();
    return UniqueId._(validateUniqueId(value));
  }

  factory UniqueId.alreadyUnique(String value) {
    return UniqueId._(right(value));
  }

  const UniqueId._(this.value);
}

class CountryName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory CountryName(String value) {
    return CountryName._(validateCountryName(value));
  }

  const CountryName._(this.value);
}

class CountryCode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory CountryCode(String value) {
    return CountryCode._(validateCountryCode(value));
  }

  const CountryCode._(this.value);
}

class Address extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Address(String value) {
    return Address._(validateAddress(value));
  }

  const Address._(this.value);
}

class UserType extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserType(String value) {
    return UserType._(validateUserType(value));
  }

  const UserType._(this.value);
}
