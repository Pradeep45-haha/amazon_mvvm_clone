import 'package:amazon_mvvm_clone/constants/country_code.dart';
import 'package:dartz/dartz.dart';
import 'failures.dart';

Either<ValueFailure<String>, String> validatePassword(String input) {
  String passwordRegex =
      "^(?=.*[A-Za-z])(?=.*d)(?=.*[\x20-\x7E])[A-Za-zd\x20-\x7E]{8,}\$";
  if (input.isEmpty || input.length < 8) {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(
      ValueFailure.weakPassword(failedValue: input),
    );
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidEmail(failedValue: input),
    );
  }
}

Either<ValueFailure<String>, String> validateTokenKey(String input) {
  if (input.isEmpty) {
    return left(
      ValueFailure.noTokenKey(failedValue: input),
    );
  }
  return right(input);
}

Either<ValueFailure<int>, int> validatePhoneNumber(int input) {
  String temp = input.toString();
  if (input.isNegative) {
    input = input.abs();
  }

  if (temp.length == 10) {
    return right(input);
  }

  if (temp.length > 10) {
    return left(ValueFailure.longPhoneNumber(failedValue: input));
  } else {
    return left(
      ValueFailure.shortPhoneNumber(failedValue: input),
    );
  }
}

Either<ValueFailure<int>, int> validatePhoneCode(int input) {
  String temp = input.toString();

  for (int i = 0; i < countryList.length; i++) {
    if ((countryList[i].phoneCode.replaceAll("-", "")) == temp) {
      return right(input);
    }
  }
  return left(ValueFailure.noSuchPhoneCode(failedValue: input));
}

Either<ValueFailure<String>, String> validateFullName(String input) {
  String nameRegex = '^[A-Za-z][A-Za-z0-9_]{7,29}\$';
  if (RegExp(nameRegex).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.invalidFullName(failedValue: input));
}

Either<ValueFailure<String>, String> validateUniqueId(String input) {
  if (input.isNotEmpty) {
    return right(input);
  }
  return left(ValueFailure.notniquieId(failedValue: input));
}

Either<ValueFailure<String>, String> validateCountryName(String input) {
  for (int i = 0; i < countryList.length; i++) {
    if (countryList[i].name == input) {
      return right(input);
    }
  }
  return left(ValueFailure.noSuchCountryName(failedValue: input));
}

Either<ValueFailure<String>, String> validateCountryCode(String input) {
  for (int i = 0; i < countryList.length; i++) {
    if (countryList[i].isoCode == input) {
      return right(input);
    }
  }
  return left(ValueFailure.noSuchCountryCode(failedValue: input));
}

Either<ValueFailure<String>, String> validateAddress(String input) {
  if (input.isEmpty) {
    return left(
      ValueFailure.noAddress(failedValue: input),
    );
  }
  return right(input);
}

Either<ValueFailure<String>, String> validateUserType(String input) {
  if (input == "user" || input == "admin") {
    return right(input);
  }

  return left(ValueFailure.noSuchUserType(failedValue: input));
}
