
part of 'auth_bloc.dart';


@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthPageGroup authPage,
    required EmailAddress emailAddress,
    required PhoneNumber phoneNumber,
    required Password password,
    required PhoneCode phoneCode,
    required CountryName countryName,
    required CountryCode countryCode,
    required FullName fullName,
    required bool isSubmitting,
    required bool showErrorMessages,
    required TokenKey? userToken,
    required bool userIsAuthorised,
    required bool userIsAdmin,
    required Option<Either<AuthFailure, http.Response>> authFailureOrSuccess,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        countryCode: CountryCode("IN"),
        countryName: CountryName("India"),
        authPage: AuthPageGroup.signupPage,
        fullName: FullName(""),
        emailAddress: EmailAddress(""),
        phoneNumber: PhoneNumber(-1),
        password: Password(""),
        phoneCode: PhoneCode(91),
        isSubmitting: false,
        showErrorMessages: false,
        userIsAdmin: false,
        authFailureOrSuccess: none(),
        userToken: TokenKey(""),
        userIsAuthorised: false,
      );
}



// @immutable
// abstract class AuthState {}

// class SignupState extends AuthState {}

// class LoginState extends AuthState {}

// class InitialState extends AuthState {}

// class CountryCodeState extends AuthState {
//   final String countryDialCode;
//   final String countryName;
//   final String countryISOCode;
//   CountryCodeState({
//     required this.countryDialCode,
//     required this.countryName,
//     required this.countryISOCode,
//   });
// }

// class SignupUserSuccessState extends AuthState {
//   SignupUserSuccessState();
// }

// class LoginUserSuccessState extends AuthState {
//   LoginUserSuccessState();
// }

// class AuthorisedUserState extends AuthState {}

// class UnAuthorisedUserState extends AuthState {}


// class AuthorisedAdminState extends AuthState{}