part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.countryChanged({
    required int phoneCode,
    required String countryCode,
    required String countryName,
  }) = CountryChanged;

  const factory AuthEvent.phoneNumberChanged({
    required int phoneNumber,
  }) = PhoneNumberChanged;
  const factory AuthEvent.emailChanged({
    required String email,
  }) = EmailChanged;
  const factory AuthEvent.passwordChanged({
    required String password,
  }) = PasswordChanged;
  const factory AuthEvent.signInWithPhoneNumber({
    required int phoneNumber,
    required int phoneCode,
  }) = SignInWithPhoneNumber;
  const factory AuthEvent.signupWithEmailAndPassword({
    required String fullName,
    required String email,
    required String password,
  }) = SignupWithEmailAndPassword;
  const factory AuthEvent.signinWithEmailAndPassword({
    required String email,
    required String password,
  }) = SigninWithEmailAndPassword;
  const factory AuthEvent.authoriseUser() = AuthoriseUser;
  const factory AuthEvent.fullNameChanged({
    required String fullName,
  }) = FullNameChanged;
  const factory AuthEvent.authPageChanged({
    required AuthPageGroup authPage,
  }) = AuthPageChanged;
   const factory AuthEvent.authoriseAdmin(
   
  ) = AuthoriseAdmin;
  const factory AuthEvent.logout() = Logout;
}


// @immutable
// abstract class AuthEvent {}

// class LoginEvent extends AuthEvent {}

// class SignupEvent extends AuthEvent {}

// class CountryCodeEvent extends AuthEvent {
//   final String countryDialCode;
//   final String countryName;
//   final String countryISOCode;
//   CountryCodeEvent(
//       {required this.countryDialCode,
//       required this.countryName,
//       required this.countryISOCode});
// }

// class SignUpUserEvent extends AuthEvent {
//   final String email;
//   final String password;
//   final String name;
//   SignUpUserEvent({
//     required this.email,
//     required this.password,
//     required this.name,
//   });
// }

// class SignInUserEvent extends AuthEvent {
//   final String email;
//   final String password;
//   SignInUserEvent({required this.email, required this.password});
// }

// class AuthoriseUserEvent extends AuthEvent {}
