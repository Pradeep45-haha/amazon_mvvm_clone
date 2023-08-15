// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int phoneCode, String countryCode, String countryName)
        countryChanged,
    required TResult Function(int phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(int phoneNumber, int phoneCode)
        signInWithPhoneNumber,
    required TResult Function(String fullName, String email, String password)
        signupWithEmailAndPassword,
    required TResult Function(String email, String password)
        signinWithEmailAndPassword,
    required TResult Function() authoriseUser,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(AuthPageGroup authPage) authPageChanged,
    required TResult Function() authoriseAdmin,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult? Function(int phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult? Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signinWithEmailAndPassword,
    TResult? Function()? authoriseUser,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(AuthPageGroup authPage)? authPageChanged,
    TResult? Function()? authoriseAdmin,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult Function(int phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult Function(String email, String password)? signinWithEmailAndPassword,
    TResult Function()? authoriseUser,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(AuthPageGroup authPage)? authPageChanged,
    TResult Function()? authoriseAdmin,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryChanged value) countryChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignupWithEmailAndPassword value)
        signupWithEmailAndPassword,
    required TResult Function(SigninWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(AuthoriseUser value) authoriseUser,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(AuthPageChanged value) authPageChanged,
    required TResult Function(AuthoriseAdmin value) authoriseAdmin,
    required TResult Function(Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryChanged value)? countryChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult? Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult? Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(AuthoriseUser value)? authoriseUser,
    TResult? Function(FullNameChanged value)? fullNameChanged,
    TResult? Function(AuthPageChanged value)? authPageChanged,
    TResult? Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult? Function(Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryChanged value)? countryChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(AuthoriseUser value)? authoriseUser,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(AuthPageChanged value)? authPageChanged,
    TResult Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CountryChangedCopyWith<$Res> {
  factory _$$CountryChangedCopyWith(
          _$CountryChanged value, $Res Function(_$CountryChanged) then) =
      __$$CountryChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({int phoneCode, String countryCode, String countryName});
}

/// @nodoc
class __$$CountryChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CountryChanged>
    implements _$$CountryChangedCopyWith<$Res> {
  __$$CountryChangedCopyWithImpl(
      _$CountryChanged _value, $Res Function(_$CountryChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneCode = null,
    Object? countryCode = null,
    Object? countryName = null,
  }) {
    return _then(_$CountryChanged(
      phoneCode: null == phoneCode
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as int,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CountryChanged implements CountryChanged {
  const _$CountryChanged(
      {required this.phoneCode,
      required this.countryCode,
      required this.countryName});

  @override
  final int phoneCode;
  @override
  final String countryCode;
  @override
  final String countryName;

  @override
  String toString() {
    return 'AuthEvent.countryChanged(phoneCode: $phoneCode, countryCode: $countryCode, countryName: $countryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryChanged &&
            (identical(other.phoneCode, phoneCode) ||
                other.phoneCode == phoneCode) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneCode, countryCode, countryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryChangedCopyWith<_$CountryChanged> get copyWith =>
      __$$CountryChangedCopyWithImpl<_$CountryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int phoneCode, String countryCode, String countryName)
        countryChanged,
    required TResult Function(int phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(int phoneNumber, int phoneCode)
        signInWithPhoneNumber,
    required TResult Function(String fullName, String email, String password)
        signupWithEmailAndPassword,
    required TResult Function(String email, String password)
        signinWithEmailAndPassword,
    required TResult Function() authoriseUser,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(AuthPageGroup authPage) authPageChanged,
    required TResult Function() authoriseAdmin,
    required TResult Function() logout,
  }) {
    return countryChanged(phoneCode, countryCode, countryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult? Function(int phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult? Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signinWithEmailAndPassword,
    TResult? Function()? authoriseUser,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(AuthPageGroup authPage)? authPageChanged,
    TResult? Function()? authoriseAdmin,
    TResult? Function()? logout,
  }) {
    return countryChanged?.call(phoneCode, countryCode, countryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult Function(int phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult Function(String email, String password)? signinWithEmailAndPassword,
    TResult Function()? authoriseUser,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(AuthPageGroup authPage)? authPageChanged,
    TResult Function()? authoriseAdmin,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (countryChanged != null) {
      return countryChanged(phoneCode, countryCode, countryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryChanged value) countryChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignupWithEmailAndPassword value)
        signupWithEmailAndPassword,
    required TResult Function(SigninWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(AuthoriseUser value) authoriseUser,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(AuthPageChanged value) authPageChanged,
    required TResult Function(AuthoriseAdmin value) authoriseAdmin,
    required TResult Function(Logout value) logout,
  }) {
    return countryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryChanged value)? countryChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult? Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult? Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(AuthoriseUser value)? authoriseUser,
    TResult? Function(FullNameChanged value)? fullNameChanged,
    TResult? Function(AuthPageChanged value)? authPageChanged,
    TResult? Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult? Function(Logout value)? logout,
  }) {
    return countryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryChanged value)? countryChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(AuthoriseUser value)? authoriseUser,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(AuthPageChanged value)? authPageChanged,
    TResult Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (countryChanged != null) {
      return countryChanged(this);
    }
    return orElse();
  }
}

abstract class CountryChanged implements AuthEvent {
  const factory CountryChanged(
      {required final int phoneCode,
      required final String countryCode,
      required final String countryName}) = _$CountryChanged;

  int get phoneCode;
  String get countryCode;
  String get countryName;
  @JsonKey(ignore: true)
  _$$CountryChangedCopyWith<_$CountryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneNumberChangedCopyWith<$Res> {
  factory _$$PhoneNumberChangedCopyWith(_$PhoneNumberChanged value,
          $Res Function(_$PhoneNumberChanged) then) =
      __$$PhoneNumberChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({int phoneNumber});
}

/// @nodoc
class __$$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PhoneNumberChanged>
    implements _$$PhoneNumberChangedCopyWith<$Res> {
  __$$PhoneNumberChangedCopyWithImpl(
      _$PhoneNumberChanged _value, $Res Function(_$PhoneNumberChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PhoneNumberChanged(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged({required this.phoneNumber});

  @override
  final int phoneNumber;

  @override
  String toString() {
    return 'AuthEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberChangedCopyWith<_$PhoneNumberChanged> get copyWith =>
      __$$PhoneNumberChangedCopyWithImpl<_$PhoneNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int phoneCode, String countryCode, String countryName)
        countryChanged,
    required TResult Function(int phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(int phoneNumber, int phoneCode)
        signInWithPhoneNumber,
    required TResult Function(String fullName, String email, String password)
        signupWithEmailAndPassword,
    required TResult Function(String email, String password)
        signinWithEmailAndPassword,
    required TResult Function() authoriseUser,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(AuthPageGroup authPage) authPageChanged,
    required TResult Function() authoriseAdmin,
    required TResult Function() logout,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult? Function(int phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult? Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signinWithEmailAndPassword,
    TResult? Function()? authoriseUser,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(AuthPageGroup authPage)? authPageChanged,
    TResult? Function()? authoriseAdmin,
    TResult? Function()? logout,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult Function(int phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult Function(String email, String password)? signinWithEmailAndPassword,
    TResult Function()? authoriseUser,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(AuthPageGroup authPage)? authPageChanged,
    TResult Function()? authoriseAdmin,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryChanged value) countryChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignupWithEmailAndPassword value)
        signupWithEmailAndPassword,
    required TResult Function(SigninWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(AuthoriseUser value) authoriseUser,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(AuthPageChanged value) authPageChanged,
    required TResult Function(AuthoriseAdmin value) authoriseAdmin,
    required TResult Function(Logout value) logout,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryChanged value)? countryChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult? Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult? Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(AuthoriseUser value)? authoriseUser,
    TResult? Function(FullNameChanged value)? fullNameChanged,
    TResult? Function(AuthPageChanged value)? authPageChanged,
    TResult? Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult? Function(Logout value)? logout,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryChanged value)? countryChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(AuthoriseUser value)? authoriseUser,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(AuthPageChanged value)? authPageChanged,
    TResult Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements AuthEvent {
  const factory PhoneNumberChanged({required final int phoneNumber}) =
      _$PhoneNumberChanged;

  int get phoneNumber;
  @JsonKey(ignore: true)
  _$$PhoneNumberChangedCopyWith<_$PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$EmailChanged>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChanged(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int phoneCode, String countryCode, String countryName)
        countryChanged,
    required TResult Function(int phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(int phoneNumber, int phoneCode)
        signInWithPhoneNumber,
    required TResult Function(String fullName, String email, String password)
        signupWithEmailAndPassword,
    required TResult Function(String email, String password)
        signinWithEmailAndPassword,
    required TResult Function() authoriseUser,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(AuthPageGroup authPage) authPageChanged,
    required TResult Function() authoriseAdmin,
    required TResult Function() logout,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult? Function(int phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult? Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signinWithEmailAndPassword,
    TResult? Function()? authoriseUser,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(AuthPageGroup authPage)? authPageChanged,
    TResult? Function()? authoriseAdmin,
    TResult? Function()? logout,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult Function(int phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult Function(String email, String password)? signinWithEmailAndPassword,
    TResult Function()? authoriseUser,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(AuthPageGroup authPage)? authPageChanged,
    TResult Function()? authoriseAdmin,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryChanged value) countryChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignupWithEmailAndPassword value)
        signupWithEmailAndPassword,
    required TResult Function(SigninWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(AuthoriseUser value) authoriseUser,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(AuthPageChanged value) authPageChanged,
    required TResult Function(AuthoriseAdmin value) authoriseAdmin,
    required TResult Function(Logout value) logout,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryChanged value)? countryChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult? Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult? Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(AuthoriseUser value)? authoriseUser,
    TResult? Function(FullNameChanged value)? fullNameChanged,
    TResult? Function(AuthPageChanged value)? authPageChanged,
    TResult? Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult? Function(Logout value)? logout,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryChanged value)? countryChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(AuthoriseUser value)? authoriseUser,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(AuthPageChanged value)? authPageChanged,
    TResult Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements AuthEvent {
  const factory EmailChanged({required final String email}) = _$EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PasswordChanged>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChanged(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int phoneCode, String countryCode, String countryName)
        countryChanged,
    required TResult Function(int phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(int phoneNumber, int phoneCode)
        signInWithPhoneNumber,
    required TResult Function(String fullName, String email, String password)
        signupWithEmailAndPassword,
    required TResult Function(String email, String password)
        signinWithEmailAndPassword,
    required TResult Function() authoriseUser,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(AuthPageGroup authPage) authPageChanged,
    required TResult Function() authoriseAdmin,
    required TResult Function() logout,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult? Function(int phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult? Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signinWithEmailAndPassword,
    TResult? Function()? authoriseUser,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(AuthPageGroup authPage)? authPageChanged,
    TResult? Function()? authoriseAdmin,
    TResult? Function()? logout,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult Function(int phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult Function(String email, String password)? signinWithEmailAndPassword,
    TResult Function()? authoriseUser,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(AuthPageGroup authPage)? authPageChanged,
    TResult Function()? authoriseAdmin,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryChanged value) countryChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignupWithEmailAndPassword value)
        signupWithEmailAndPassword,
    required TResult Function(SigninWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(AuthoriseUser value) authoriseUser,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(AuthPageChanged value) authPageChanged,
    required TResult Function(AuthoriseAdmin value) authoriseAdmin,
    required TResult Function(Logout value) logout,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryChanged value)? countryChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult? Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult? Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(AuthoriseUser value)? authoriseUser,
    TResult? Function(FullNameChanged value)? fullNameChanged,
    TResult? Function(AuthPageChanged value)? authPageChanged,
    TResult? Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult? Function(Logout value)? logout,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryChanged value)? countryChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(AuthoriseUser value)? authoriseUser,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(AuthPageChanged value)? authPageChanged,
    TResult Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements AuthEvent {
  const factory PasswordChanged({required final String password}) =
      _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithPhoneNumberCopyWith<$Res> {
  factory _$$SignInWithPhoneNumberCopyWith(_$SignInWithPhoneNumber value,
          $Res Function(_$SignInWithPhoneNumber) then) =
      __$$SignInWithPhoneNumberCopyWithImpl<$Res>;
  @useResult
  $Res call({int phoneNumber, int phoneCode});
}

/// @nodoc
class __$$SignInWithPhoneNumberCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithPhoneNumber>
    implements _$$SignInWithPhoneNumberCopyWith<$Res> {
  __$$SignInWithPhoneNumberCopyWithImpl(_$SignInWithPhoneNumber _value,
      $Res Function(_$SignInWithPhoneNumber) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? phoneCode = null,
  }) {
    return _then(_$SignInWithPhoneNumber(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int,
      phoneCode: null == phoneCode
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SignInWithPhoneNumber implements SignInWithPhoneNumber {
  const _$SignInWithPhoneNumber(
      {required this.phoneNumber, required this.phoneCode});

  @override
  final int phoneNumber;
  @override
  final int phoneCode;

  @override
  String toString() {
    return 'AuthEvent.signInWithPhoneNumber(phoneNumber: $phoneNumber, phoneCode: $phoneCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithPhoneNumber &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.phoneCode, phoneCode) ||
                other.phoneCode == phoneCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, phoneCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithPhoneNumberCopyWith<_$SignInWithPhoneNumber> get copyWith =>
      __$$SignInWithPhoneNumberCopyWithImpl<_$SignInWithPhoneNumber>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int phoneCode, String countryCode, String countryName)
        countryChanged,
    required TResult Function(int phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(int phoneNumber, int phoneCode)
        signInWithPhoneNumber,
    required TResult Function(String fullName, String email, String password)
        signupWithEmailAndPassword,
    required TResult Function(String email, String password)
        signinWithEmailAndPassword,
    required TResult Function() authoriseUser,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(AuthPageGroup authPage) authPageChanged,
    required TResult Function() authoriseAdmin,
    required TResult Function() logout,
  }) {
    return signInWithPhoneNumber(phoneNumber, phoneCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult? Function(int phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult? Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signinWithEmailAndPassword,
    TResult? Function()? authoriseUser,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(AuthPageGroup authPage)? authPageChanged,
    TResult? Function()? authoriseAdmin,
    TResult? Function()? logout,
  }) {
    return signInWithPhoneNumber?.call(phoneNumber, phoneCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult Function(int phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult Function(String email, String password)? signinWithEmailAndPassword,
    TResult Function()? authoriseUser,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(AuthPageGroup authPage)? authPageChanged,
    TResult Function()? authoriseAdmin,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (signInWithPhoneNumber != null) {
      return signInWithPhoneNumber(phoneNumber, phoneCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryChanged value) countryChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignupWithEmailAndPassword value)
        signupWithEmailAndPassword,
    required TResult Function(SigninWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(AuthoriseUser value) authoriseUser,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(AuthPageChanged value) authPageChanged,
    required TResult Function(AuthoriseAdmin value) authoriseAdmin,
    required TResult Function(Logout value) logout,
  }) {
    return signInWithPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryChanged value)? countryChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult? Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult? Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(AuthoriseUser value)? authoriseUser,
    TResult? Function(FullNameChanged value)? fullNameChanged,
    TResult? Function(AuthPageChanged value)? authPageChanged,
    TResult? Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult? Function(Logout value)? logout,
  }) {
    return signInWithPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryChanged value)? countryChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(AuthoriseUser value)? authoriseUser,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(AuthPageChanged value)? authPageChanged,
    TResult Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (signInWithPhoneNumber != null) {
      return signInWithPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class SignInWithPhoneNumber implements AuthEvent {
  const factory SignInWithPhoneNumber(
      {required final int phoneNumber,
      required final int phoneCode}) = _$SignInWithPhoneNumber;

  int get phoneNumber;
  int get phoneCode;
  @JsonKey(ignore: true)
  _$$SignInWithPhoneNumberCopyWith<_$SignInWithPhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupWithEmailAndPasswordCopyWith<$Res> {
  factory _$$SignupWithEmailAndPasswordCopyWith(
          _$SignupWithEmailAndPassword value,
          $Res Function(_$SignupWithEmailAndPassword) then) =
      __$$SignupWithEmailAndPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String fullName, String email, String password});
}

/// @nodoc
class __$$SignupWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignupWithEmailAndPassword>
    implements _$$SignupWithEmailAndPasswordCopyWith<$Res> {
  __$$SignupWithEmailAndPasswordCopyWithImpl(
      _$SignupWithEmailAndPassword _value,
      $Res Function(_$SignupWithEmailAndPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignupWithEmailAndPassword(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupWithEmailAndPassword implements SignupWithEmailAndPassword {
  const _$SignupWithEmailAndPassword(
      {required this.fullName, required this.email, required this.password});

  @override
  final String fullName;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signupWithEmailAndPassword(fullName: $fullName, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupWithEmailAndPassword &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupWithEmailAndPasswordCopyWith<_$SignupWithEmailAndPassword>
      get copyWith => __$$SignupWithEmailAndPasswordCopyWithImpl<
          _$SignupWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int phoneCode, String countryCode, String countryName)
        countryChanged,
    required TResult Function(int phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(int phoneNumber, int phoneCode)
        signInWithPhoneNumber,
    required TResult Function(String fullName, String email, String password)
        signupWithEmailAndPassword,
    required TResult Function(String email, String password)
        signinWithEmailAndPassword,
    required TResult Function() authoriseUser,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(AuthPageGroup authPage) authPageChanged,
    required TResult Function() authoriseAdmin,
    required TResult Function() logout,
  }) {
    return signupWithEmailAndPassword(fullName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult? Function(int phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult? Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signinWithEmailAndPassword,
    TResult? Function()? authoriseUser,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(AuthPageGroup authPage)? authPageChanged,
    TResult? Function()? authoriseAdmin,
    TResult? Function()? logout,
  }) {
    return signupWithEmailAndPassword?.call(fullName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult Function(int phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult Function(String email, String password)? signinWithEmailAndPassword,
    TResult Function()? authoriseUser,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(AuthPageGroup authPage)? authPageChanged,
    TResult Function()? authoriseAdmin,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (signupWithEmailAndPassword != null) {
      return signupWithEmailAndPassword(fullName, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryChanged value) countryChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignupWithEmailAndPassword value)
        signupWithEmailAndPassword,
    required TResult Function(SigninWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(AuthoriseUser value) authoriseUser,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(AuthPageChanged value) authPageChanged,
    required TResult Function(AuthoriseAdmin value) authoriseAdmin,
    required TResult Function(Logout value) logout,
  }) {
    return signupWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryChanged value)? countryChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult? Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult? Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(AuthoriseUser value)? authoriseUser,
    TResult? Function(FullNameChanged value)? fullNameChanged,
    TResult? Function(AuthPageChanged value)? authPageChanged,
    TResult? Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult? Function(Logout value)? logout,
  }) {
    return signupWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryChanged value)? countryChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(AuthoriseUser value)? authoriseUser,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(AuthPageChanged value)? authPageChanged,
    TResult Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (signupWithEmailAndPassword != null) {
      return signupWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class SignupWithEmailAndPassword implements AuthEvent {
  const factory SignupWithEmailAndPassword(
      {required final String fullName,
      required final String email,
      required final String password}) = _$SignupWithEmailAndPassword;

  String get fullName;
  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignupWithEmailAndPasswordCopyWith<_$SignupWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SigninWithEmailAndPasswordCopyWith<$Res> {
  factory _$$SigninWithEmailAndPasswordCopyWith(
          _$SigninWithEmailAndPassword value,
          $Res Function(_$SigninWithEmailAndPassword) then) =
      __$$SigninWithEmailAndPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SigninWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SigninWithEmailAndPassword>
    implements _$$SigninWithEmailAndPasswordCopyWith<$Res> {
  __$$SigninWithEmailAndPasswordCopyWithImpl(
      _$SigninWithEmailAndPassword _value,
      $Res Function(_$SigninWithEmailAndPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SigninWithEmailAndPassword(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SigninWithEmailAndPassword implements SigninWithEmailAndPassword {
  const _$SigninWithEmailAndPassword(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signinWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninWithEmailAndPassword &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninWithEmailAndPasswordCopyWith<_$SigninWithEmailAndPassword>
      get copyWith => __$$SigninWithEmailAndPasswordCopyWithImpl<
          _$SigninWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int phoneCode, String countryCode, String countryName)
        countryChanged,
    required TResult Function(int phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(int phoneNumber, int phoneCode)
        signInWithPhoneNumber,
    required TResult Function(String fullName, String email, String password)
        signupWithEmailAndPassword,
    required TResult Function(String email, String password)
        signinWithEmailAndPassword,
    required TResult Function() authoriseUser,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(AuthPageGroup authPage) authPageChanged,
    required TResult Function() authoriseAdmin,
    required TResult Function() logout,
  }) {
    return signinWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult? Function(int phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult? Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signinWithEmailAndPassword,
    TResult? Function()? authoriseUser,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(AuthPageGroup authPage)? authPageChanged,
    TResult? Function()? authoriseAdmin,
    TResult? Function()? logout,
  }) {
    return signinWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult Function(int phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult Function(String email, String password)? signinWithEmailAndPassword,
    TResult Function()? authoriseUser,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(AuthPageGroup authPage)? authPageChanged,
    TResult Function()? authoriseAdmin,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (signinWithEmailAndPassword != null) {
      return signinWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryChanged value) countryChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignupWithEmailAndPassword value)
        signupWithEmailAndPassword,
    required TResult Function(SigninWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(AuthoriseUser value) authoriseUser,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(AuthPageChanged value) authPageChanged,
    required TResult Function(AuthoriseAdmin value) authoriseAdmin,
    required TResult Function(Logout value) logout,
  }) {
    return signinWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryChanged value)? countryChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult? Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult? Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(AuthoriseUser value)? authoriseUser,
    TResult? Function(FullNameChanged value)? fullNameChanged,
    TResult? Function(AuthPageChanged value)? authPageChanged,
    TResult? Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult? Function(Logout value)? logout,
  }) {
    return signinWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryChanged value)? countryChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(AuthoriseUser value)? authoriseUser,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(AuthPageChanged value)? authPageChanged,
    TResult Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (signinWithEmailAndPassword != null) {
      return signinWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class SigninWithEmailAndPassword implements AuthEvent {
  const factory SigninWithEmailAndPassword(
      {required final String email,
      required final String password}) = _$SigninWithEmailAndPassword;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SigninWithEmailAndPasswordCopyWith<_$SigninWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthoriseUserCopyWith<$Res> {
  factory _$$AuthoriseUserCopyWith(
          _$AuthoriseUser value, $Res Function(_$AuthoriseUser) then) =
      __$$AuthoriseUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthoriseUserCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthoriseUser>
    implements _$$AuthoriseUserCopyWith<$Res> {
  __$$AuthoriseUserCopyWithImpl(
      _$AuthoriseUser _value, $Res Function(_$AuthoriseUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthoriseUser implements AuthoriseUser {
  const _$AuthoriseUser();

  @override
  String toString() {
    return 'AuthEvent.authoriseUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthoriseUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int phoneCode, String countryCode, String countryName)
        countryChanged,
    required TResult Function(int phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(int phoneNumber, int phoneCode)
        signInWithPhoneNumber,
    required TResult Function(String fullName, String email, String password)
        signupWithEmailAndPassword,
    required TResult Function(String email, String password)
        signinWithEmailAndPassword,
    required TResult Function() authoriseUser,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(AuthPageGroup authPage) authPageChanged,
    required TResult Function() authoriseAdmin,
    required TResult Function() logout,
  }) {
    return authoriseUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult? Function(int phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult? Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signinWithEmailAndPassword,
    TResult? Function()? authoriseUser,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(AuthPageGroup authPage)? authPageChanged,
    TResult? Function()? authoriseAdmin,
    TResult? Function()? logout,
  }) {
    return authoriseUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult Function(int phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult Function(String email, String password)? signinWithEmailAndPassword,
    TResult Function()? authoriseUser,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(AuthPageGroup authPage)? authPageChanged,
    TResult Function()? authoriseAdmin,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (authoriseUser != null) {
      return authoriseUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryChanged value) countryChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignupWithEmailAndPassword value)
        signupWithEmailAndPassword,
    required TResult Function(SigninWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(AuthoriseUser value) authoriseUser,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(AuthPageChanged value) authPageChanged,
    required TResult Function(AuthoriseAdmin value) authoriseAdmin,
    required TResult Function(Logout value) logout,
  }) {
    return authoriseUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryChanged value)? countryChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult? Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult? Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(AuthoriseUser value)? authoriseUser,
    TResult? Function(FullNameChanged value)? fullNameChanged,
    TResult? Function(AuthPageChanged value)? authPageChanged,
    TResult? Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult? Function(Logout value)? logout,
  }) {
    return authoriseUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryChanged value)? countryChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(AuthoriseUser value)? authoriseUser,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(AuthPageChanged value)? authPageChanged,
    TResult Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (authoriseUser != null) {
      return authoriseUser(this);
    }
    return orElse();
  }
}

abstract class AuthoriseUser implements AuthEvent {
  const factory AuthoriseUser() = _$AuthoriseUser;
}

/// @nodoc
abstract class _$$FullNameChangedCopyWith<$Res> {
  factory _$$FullNameChangedCopyWith(
          _$FullNameChanged value, $Res Function(_$FullNameChanged) then) =
      __$$FullNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String fullName});
}

/// @nodoc
class __$$FullNameChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$FullNameChanged>
    implements _$$FullNameChangedCopyWith<$Res> {
  __$$FullNameChangedCopyWithImpl(
      _$FullNameChanged _value, $Res Function(_$FullNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
  }) {
    return _then(_$FullNameChanged(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FullNameChanged implements FullNameChanged {
  const _$FullNameChanged({required this.fullName});

  @override
  final String fullName;

  @override
  String toString() {
    return 'AuthEvent.fullNameChanged(fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullNameChanged &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FullNameChangedCopyWith<_$FullNameChanged> get copyWith =>
      __$$FullNameChangedCopyWithImpl<_$FullNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int phoneCode, String countryCode, String countryName)
        countryChanged,
    required TResult Function(int phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(int phoneNumber, int phoneCode)
        signInWithPhoneNumber,
    required TResult Function(String fullName, String email, String password)
        signupWithEmailAndPassword,
    required TResult Function(String email, String password)
        signinWithEmailAndPassword,
    required TResult Function() authoriseUser,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(AuthPageGroup authPage) authPageChanged,
    required TResult Function() authoriseAdmin,
    required TResult Function() logout,
  }) {
    return fullNameChanged(fullName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult? Function(int phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult? Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signinWithEmailAndPassword,
    TResult? Function()? authoriseUser,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(AuthPageGroup authPage)? authPageChanged,
    TResult? Function()? authoriseAdmin,
    TResult? Function()? logout,
  }) {
    return fullNameChanged?.call(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult Function(int phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult Function(String email, String password)? signinWithEmailAndPassword,
    TResult Function()? authoriseUser,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(AuthPageGroup authPage)? authPageChanged,
    TResult Function()? authoriseAdmin,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryChanged value) countryChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignupWithEmailAndPassword value)
        signupWithEmailAndPassword,
    required TResult Function(SigninWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(AuthoriseUser value) authoriseUser,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(AuthPageChanged value) authPageChanged,
    required TResult Function(AuthoriseAdmin value) authoriseAdmin,
    required TResult Function(Logout value) logout,
  }) {
    return fullNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryChanged value)? countryChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult? Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult? Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(AuthoriseUser value)? authoriseUser,
    TResult? Function(FullNameChanged value)? fullNameChanged,
    TResult? Function(AuthPageChanged value)? authPageChanged,
    TResult? Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult? Function(Logout value)? logout,
  }) {
    return fullNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryChanged value)? countryChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(AuthoriseUser value)? authoriseUser,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(AuthPageChanged value)? authPageChanged,
    TResult Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(this);
    }
    return orElse();
  }
}

abstract class FullNameChanged implements AuthEvent {
  const factory FullNameChanged({required final String fullName}) =
      _$FullNameChanged;

  String get fullName;
  @JsonKey(ignore: true)
  _$$FullNameChangedCopyWith<_$FullNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthPageChangedCopyWith<$Res> {
  factory _$$AuthPageChangedCopyWith(
          _$AuthPageChanged value, $Res Function(_$AuthPageChanged) then) =
      __$$AuthPageChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthPageGroup authPage});
}

/// @nodoc
class __$$AuthPageChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthPageChanged>
    implements _$$AuthPageChangedCopyWith<$Res> {
  __$$AuthPageChangedCopyWithImpl(
      _$AuthPageChanged _value, $Res Function(_$AuthPageChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authPage = null,
  }) {
    return _then(_$AuthPageChanged(
      authPage: null == authPage
          ? _value.authPage
          : authPage // ignore: cast_nullable_to_non_nullable
              as AuthPageGroup,
    ));
  }
}

/// @nodoc

class _$AuthPageChanged implements AuthPageChanged {
  const _$AuthPageChanged({required this.authPage});

  @override
  final AuthPageGroup authPage;

  @override
  String toString() {
    return 'AuthEvent.authPageChanged(authPage: $authPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthPageChanged &&
            (identical(other.authPage, authPage) ||
                other.authPage == authPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthPageChangedCopyWith<_$AuthPageChanged> get copyWith =>
      __$$AuthPageChangedCopyWithImpl<_$AuthPageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int phoneCode, String countryCode, String countryName)
        countryChanged,
    required TResult Function(int phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(int phoneNumber, int phoneCode)
        signInWithPhoneNumber,
    required TResult Function(String fullName, String email, String password)
        signupWithEmailAndPassword,
    required TResult Function(String email, String password)
        signinWithEmailAndPassword,
    required TResult Function() authoriseUser,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(AuthPageGroup authPage) authPageChanged,
    required TResult Function() authoriseAdmin,
    required TResult Function() logout,
  }) {
    return authPageChanged(authPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult? Function(int phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult? Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signinWithEmailAndPassword,
    TResult? Function()? authoriseUser,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(AuthPageGroup authPage)? authPageChanged,
    TResult? Function()? authoriseAdmin,
    TResult? Function()? logout,
  }) {
    return authPageChanged?.call(authPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult Function(int phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult Function(String email, String password)? signinWithEmailAndPassword,
    TResult Function()? authoriseUser,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(AuthPageGroup authPage)? authPageChanged,
    TResult Function()? authoriseAdmin,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (authPageChanged != null) {
      return authPageChanged(authPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryChanged value) countryChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignupWithEmailAndPassword value)
        signupWithEmailAndPassword,
    required TResult Function(SigninWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(AuthoriseUser value) authoriseUser,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(AuthPageChanged value) authPageChanged,
    required TResult Function(AuthoriseAdmin value) authoriseAdmin,
    required TResult Function(Logout value) logout,
  }) {
    return authPageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryChanged value)? countryChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult? Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult? Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(AuthoriseUser value)? authoriseUser,
    TResult? Function(FullNameChanged value)? fullNameChanged,
    TResult? Function(AuthPageChanged value)? authPageChanged,
    TResult? Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult? Function(Logout value)? logout,
  }) {
    return authPageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryChanged value)? countryChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(AuthoriseUser value)? authoriseUser,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(AuthPageChanged value)? authPageChanged,
    TResult Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (authPageChanged != null) {
      return authPageChanged(this);
    }
    return orElse();
  }
}

abstract class AuthPageChanged implements AuthEvent {
  const factory AuthPageChanged({required final AuthPageGroup authPage}) =
      _$AuthPageChanged;

  AuthPageGroup get authPage;
  @JsonKey(ignore: true)
  _$$AuthPageChangedCopyWith<_$AuthPageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthoriseAdminCopyWith<$Res> {
  factory _$$AuthoriseAdminCopyWith(
          _$AuthoriseAdmin value, $Res Function(_$AuthoriseAdmin) then) =
      __$$AuthoriseAdminCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthoriseAdminCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthoriseAdmin>
    implements _$$AuthoriseAdminCopyWith<$Res> {
  __$$AuthoriseAdminCopyWithImpl(
      _$AuthoriseAdmin _value, $Res Function(_$AuthoriseAdmin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthoriseAdmin implements AuthoriseAdmin {
  const _$AuthoriseAdmin();

  @override
  String toString() {
    return 'AuthEvent.authoriseAdmin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthoriseAdmin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int phoneCode, String countryCode, String countryName)
        countryChanged,
    required TResult Function(int phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(int phoneNumber, int phoneCode)
        signInWithPhoneNumber,
    required TResult Function(String fullName, String email, String password)
        signupWithEmailAndPassword,
    required TResult Function(String email, String password)
        signinWithEmailAndPassword,
    required TResult Function() authoriseUser,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(AuthPageGroup authPage) authPageChanged,
    required TResult Function() authoriseAdmin,
    required TResult Function() logout,
  }) {
    return authoriseAdmin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult? Function(int phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult? Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signinWithEmailAndPassword,
    TResult? Function()? authoriseUser,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(AuthPageGroup authPage)? authPageChanged,
    TResult? Function()? authoriseAdmin,
    TResult? Function()? logout,
  }) {
    return authoriseAdmin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult Function(int phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult Function(String email, String password)? signinWithEmailAndPassword,
    TResult Function()? authoriseUser,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(AuthPageGroup authPage)? authPageChanged,
    TResult Function()? authoriseAdmin,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (authoriseAdmin != null) {
      return authoriseAdmin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryChanged value) countryChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignupWithEmailAndPassword value)
        signupWithEmailAndPassword,
    required TResult Function(SigninWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(AuthoriseUser value) authoriseUser,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(AuthPageChanged value) authPageChanged,
    required TResult Function(AuthoriseAdmin value) authoriseAdmin,
    required TResult Function(Logout value) logout,
  }) {
    return authoriseAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryChanged value)? countryChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult? Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult? Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(AuthoriseUser value)? authoriseUser,
    TResult? Function(FullNameChanged value)? fullNameChanged,
    TResult? Function(AuthPageChanged value)? authPageChanged,
    TResult? Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult? Function(Logout value)? logout,
  }) {
    return authoriseAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryChanged value)? countryChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(AuthoriseUser value)? authoriseUser,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(AuthPageChanged value)? authPageChanged,
    TResult Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (authoriseAdmin != null) {
      return authoriseAdmin(this);
    }
    return orElse();
  }
}

abstract class AuthoriseAdmin implements AuthEvent {
  const factory AuthoriseAdmin() = _$AuthoriseAdmin;
}

/// @nodoc
abstract class _$$LogoutCopyWith<$Res> {
  factory _$$LogoutCopyWith(_$Logout value, $Res Function(_$Logout) then) =
      __$$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$Logout>
    implements _$$LogoutCopyWith<$Res> {
  __$$LogoutCopyWithImpl(_$Logout _value, $Res Function(_$Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Logout implements Logout {
  const _$Logout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int phoneCode, String countryCode, String countryName)
        countryChanged,
    required TResult Function(int phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(int phoneNumber, int phoneCode)
        signInWithPhoneNumber,
    required TResult Function(String fullName, String email, String password)
        signupWithEmailAndPassword,
    required TResult Function(String email, String password)
        signinWithEmailAndPassword,
    required TResult Function() authoriseUser,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(AuthPageGroup authPage) authPageChanged,
    required TResult Function() authoriseAdmin,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult? Function(int phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult? Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signinWithEmailAndPassword,
    TResult? Function()? authoriseUser,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(AuthPageGroup authPage)? authPageChanged,
    TResult? Function()? authoriseAdmin,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phoneCode, String countryCode, String countryName)?
        countryChanged,
    TResult Function(int phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(int phoneNumber, int phoneCode)? signInWithPhoneNumber,
    TResult Function(String fullName, String email, String password)?
        signupWithEmailAndPassword,
    TResult Function(String email, String password)? signinWithEmailAndPassword,
    TResult Function()? authoriseUser,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(AuthPageGroup authPage)? authPageChanged,
    TResult Function()? authoriseAdmin,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryChanged value) countryChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithPhoneNumber value)
        signInWithPhoneNumber,
    required TResult Function(SignupWithEmailAndPassword value)
        signupWithEmailAndPassword,
    required TResult Function(SigninWithEmailAndPassword value)
        signinWithEmailAndPassword,
    required TResult Function(AuthoriseUser value) authoriseUser,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(AuthPageChanged value) authPageChanged,
    required TResult Function(AuthoriseAdmin value) authoriseAdmin,
    required TResult Function(Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryChanged value)? countryChanged,
    TResult? Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult? Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult? Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult? Function(AuthoriseUser value)? authoriseUser,
    TResult? Function(FullNameChanged value)? fullNameChanged,
    TResult? Function(AuthPageChanged value)? authPageChanged,
    TResult? Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult? Function(Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryChanged value)? countryChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithPhoneNumber value)? signInWithPhoneNumber,
    TResult Function(SignupWithEmailAndPassword value)?
        signupWithEmailAndPassword,
    TResult Function(SigninWithEmailAndPassword value)?
        signinWithEmailAndPassword,
    TResult Function(AuthoriseUser value)? authoriseUser,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(AuthPageChanged value)? authPageChanged,
    TResult Function(AuthoriseAdmin value)? authoriseAdmin,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements AuthEvent {
  const factory Logout() = _$Logout;
}

/// @nodoc
mixin _$AuthState {
  AuthPageGroup get authPage => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  PhoneCode get phoneCode => throw _privateConstructorUsedError;
  CountryName get countryName => throw _privateConstructorUsedError;
  CountryCode get countryCode => throw _privateConstructorUsedError;
  FullName get fullName => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  TokenKey? get userToken => throw _privateConstructorUsedError;
  bool get userIsAuthorised => throw _privateConstructorUsedError;
  bool get userIsAdmin => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Response>> get authFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {AuthPageGroup authPage,
      EmailAddress emailAddress,
      PhoneNumber phoneNumber,
      Password password,
      PhoneCode phoneCode,
      CountryName countryName,
      CountryCode countryCode,
      FullName fullName,
      bool isSubmitting,
      bool showErrorMessages,
      TokenKey? userToken,
      bool userIsAuthorised,
      bool userIsAdmin,
      Option<Either<AuthFailure, Response>> authFailureOrSuccess});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authPage = null,
    Object? emailAddress = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? phoneCode = null,
    Object? countryName = null,
    Object? countryCode = null,
    Object? fullName = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? userToken = freezed,
    Object? userIsAuthorised = null,
    Object? userIsAdmin = null,
    Object? authFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      authPage: null == authPage
          ? _value.authPage
          : authPage // ignore: cast_nullable_to_non_nullable
              as AuthPageGroup,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      phoneCode: null == phoneCode
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as PhoneCode,
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as CountryName,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as CountryCode,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      userToken: freezed == userToken
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as TokenKey?,
      userIsAuthorised: null == userIsAuthorised
          ? _value.userIsAuthorised
          : userIsAuthorised // ignore: cast_nullable_to_non_nullable
              as bool,
      userIsAdmin: null == userIsAdmin
          ? _value.userIsAdmin
          : userIsAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: null == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Response>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthPageGroup authPage,
      EmailAddress emailAddress,
      PhoneNumber phoneNumber,
      Password password,
      PhoneCode phoneCode,
      CountryName countryName,
      CountryCode countryCode,
      FullName fullName,
      bool isSubmitting,
      bool showErrorMessages,
      TokenKey? userToken,
      bool userIsAuthorised,
      bool userIsAdmin,
      Option<Either<AuthFailure, Response>> authFailureOrSuccess});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authPage = null,
    Object? emailAddress = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? phoneCode = null,
    Object? countryName = null,
    Object? countryCode = null,
    Object? fullName = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? userToken = freezed,
    Object? userIsAuthorised = null,
    Object? userIsAdmin = null,
    Object? authFailureOrSuccess = null,
  }) {
    return _then(_$_AuthState(
      authPage: null == authPage
          ? _value.authPage
          : authPage // ignore: cast_nullable_to_non_nullable
              as AuthPageGroup,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      phoneCode: null == phoneCode
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as PhoneCode,
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as CountryName,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as CountryCode,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      userToken: freezed == userToken
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as TokenKey?,
      userIsAuthorised: null == userIsAuthorised
          ? _value.userIsAuthorised
          : userIsAuthorised // ignore: cast_nullable_to_non_nullable
              as bool,
      userIsAdmin: null == userIsAdmin
          ? _value.userIsAdmin
          : userIsAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: null == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Response>>,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.authPage,
      required this.emailAddress,
      required this.phoneNumber,
      required this.password,
      required this.phoneCode,
      required this.countryName,
      required this.countryCode,
      required this.fullName,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.userToken,
      required this.userIsAuthorised,
      required this.userIsAdmin,
      required this.authFailureOrSuccess});

  @override
  final AuthPageGroup authPage;
  @override
  final EmailAddress emailAddress;
  @override
  final PhoneNumber phoneNumber;
  @override
  final Password password;
  @override
  final PhoneCode phoneCode;
  @override
  final CountryName countryName;
  @override
  final CountryCode countryCode;
  @override
  final FullName fullName;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final TokenKey? userToken;
  @override
  final bool userIsAuthorised;
  @override
  final bool userIsAdmin;
  @override
  final Option<Either<AuthFailure, Response>> authFailureOrSuccess;

  @override
  String toString() {
    return 'AuthState(authPage: $authPage, emailAddress: $emailAddress, phoneNumber: $phoneNumber, password: $password, phoneCode: $phoneCode, countryName: $countryName, countryCode: $countryCode, fullName: $fullName, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, userToken: $userToken, userIsAuthorised: $userIsAuthorised, userIsAdmin: $userIsAdmin, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.authPage, authPage) ||
                other.authPage == authPage) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phoneCode, phoneCode) ||
                other.phoneCode == phoneCode) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.userToken, userToken) ||
                other.userToken == userToken) &&
            (identical(other.userIsAuthorised, userIsAuthorised) ||
                other.userIsAuthorised == userIsAuthorised) &&
            (identical(other.userIsAdmin, userIsAdmin) ||
                other.userIsAdmin == userIsAdmin) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                other.authFailureOrSuccess == authFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      authPage,
      emailAddress,
      phoneNumber,
      password,
      phoneCode,
      countryName,
      countryCode,
      fullName,
      isSubmitting,
      showErrorMessages,
      userToken,
      userIsAuthorised,
      userIsAdmin,
      authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final AuthPageGroup authPage,
      required final EmailAddress emailAddress,
      required final PhoneNumber phoneNumber,
      required final Password password,
      required final PhoneCode phoneCode,
      required final CountryName countryName,
      required final CountryCode countryCode,
      required final FullName fullName,
      required final bool isSubmitting,
      required final bool showErrorMessages,
      required final TokenKey? userToken,
      required final bool userIsAuthorised,
      required final bool userIsAdmin,
      required final Option<Either<AuthFailure, Response>>
          authFailureOrSuccess}) = _$_AuthState;

  @override
  AuthPageGroup get authPage;
  @override
  EmailAddress get emailAddress;
  @override
  PhoneNumber get phoneNumber;
  @override
  Password get password;
  @override
  PhoneCode get phoneCode;
  @override
  CountryName get countryName;
  @override
  CountryCode get countryCode;
  @override
  FullName get fullName;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  TokenKey? get userToken;
  @override
  bool get userIsAuthorised;
  @override
  bool get userIsAdmin;
  @override
  Option<Either<AuthFailure, Response>> get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
