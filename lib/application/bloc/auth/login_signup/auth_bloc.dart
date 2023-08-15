import 'dart:convert';
import 'package:amazon_mvvm_clone/domain/auth/i_auht_facade.dart';
import 'package:amazon_mvvm_clone/domain/auth/user.dart';
import 'package:amazon_mvvm_clone/domain/auth/value_object.dart';
import 'package:amazon_mvvm_clone/domain/repository/app_repository.dart';
import 'package:amazon_mvvm_clone/infrastructure/local_storage/state_persistance/state_persistance.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
// ignore: depend_on_referenced_packages, unnecessary_import
import 'package:meta/meta.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../constants/global_variables.dart';
import '../../../../domain/auth/auth_failure.dart';
import 'package:http/http.dart' as http;
part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  //auth interfaces
  final IAuthFacade iAuthFacade;
  //auth state

  //controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailPhoneNumberController = TextEditingController();

  //keys
  final signupFormKey = GlobalKey<FormState>();
  final loginFormKey = GlobalKey<FormState>();

  //token keys
  String? loginTokenKey;

  //country code
  // String countryDialCode = "+91";
  // String countryName = "India";
  // String countryISOCode = "IN";

  AuthPageGroup authPage = AuthPageGroup.signupPage;

  // user data
  // User _user = User(
  //   token: "",
  //   id: "",
  //   name: "",
  //   password: "",
  //   email: "",
  //   type: "",
  // );

  // get user => _user;
  // void setUser(String user) {
  //   _user = User.fromJson(user);
  // }
  User user = User(
    uid: UniqueId.alreadyUnique(""),
    fullName: FullName(""),
    emailAddress: EmailAddress(""),
    address: Address(""),
    userType: UserType(""),
  );

  Future<String?> getLoginTokenKey() async {
    StatePersistance statePersistance = StatePersistance();
    loginTokenKey = await statePersistance.getUserLoginKey(key: "loginKey");

    return loginTokenKey;
  }

  // Future<Response?> authoriseUser() async {
  //   loginTokenKey = await getLoginTokenKey();

  //   AuthService authService = AuthService();
  //   if (loginTokenKey == null) {
  //     return null;
  //   }
  //   Future<Response?> res =
  //       authService.authoriseUser(loginToken: loginTokenKey!);
  //   return res;
  // }

  @override
  Future<void> close() {
    emailController.dispose();
    nameController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    emailPhoneNumberController.dispose();
    return super.close();
  }

  //auth bloc logic
  AuthBloc({required AppRepository appRepository, required this.iAuthFacade})
      : super(AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.map(
          phoneNumberChanged: (e) {
            emit(
              state.copyWith(
                phoneNumber: PhoneNumber(e.phoneNumber),
                authFailureOrSuccess: none(),
              ),
            );
          },
          emailChanged: (e) {
            emit(
              state.copyWith(
                emailAddress: EmailAddress(e.email),
                authFailureOrSuccess: none(),
              ),
            );
          },
          passwordChanged: (e) {
            emit(
              state.copyWith(
                password: Password(e.password),
                authFailureOrSuccess: none(),
              ),
            );
          },
          signInWithPhoneNumber: (e) async {
            final isPhoneCodeValid = state.phoneCode.isValid();
            final isPhoneNumberValid = state.phoneNumber.isValid();
            if (isPhoneCodeValid && isPhoneNumberValid) {
              emit(
                state.copyWith(
                  isSubmitting: true,
                  authFailureOrSuccess: none(),
                ),
              );

              final failureOrSuccess = await iAuthFacade.singinWithPhoneNumber(
                phoneNumber: state.phoneNumber,
                phoneCode: state.phoneCode,
              );

              emit(
                state.copyWith(
                  isSubmitting: false,
                  authFailureOrSuccess: some(failureOrSuccess),
                ),
              );
            }
          },
          signupWithEmailAndPassword: (e) async {
            final isEmailValid = state.emailAddress.isValid();
            final isPasswordValid = state.password.isValid();
            if (isEmailValid && isPasswordValid) {
              emit(
                state.copyWith(
                  isSubmitting: true,
                  authFailureOrSuccess: none(),
                ),
              );

              final failureOrSuccess =
                  await iAuthFacade.signupWithEmailAndPassword(
                emailAddress: state.emailAddress,
                fullName: state.fullName,
                password: state.password,
              );
              //failureOrSuccess.map((r) => print(r.body.toString()));
              failureOrSuccess.map((r) {
                Map<String, dynamic> userData = jsonDecode(r.body);
                userData = userData["user"];
                debugPrint(userData.toString());
                user = User(
                  uid:
                      UniqueId.alreadyUnique(userData["_id"]?.toString() ?? ""),
                  fullName: FullName(userData["name"] ?? ""),
                  emailAddress: EmailAddress(userData["email"] ?? ""),
                  address: Address(userData["address"] ?? ""),
                  userType: UserType(userData["type"] ?? ""),
                );
              });
              debugPrint(user.toString());
              emit(
                state.copyWith(
                  showErrorMessages: true,
                  userIsAuthorised: true,
                  isSubmitting: false,
                  authFailureOrSuccess: some(failureOrSuccess),
                ),
              );
            }
          },
          signinWithEmailAndPassword: (e) async {
            final isEmailValid = state.emailAddress.isValid();
            final isPasswordValid = state.password.isValid();
            if (isEmailValid && isPasswordValid) {
              emit(
                state.copyWith(
                  isSubmitting: true,
                  authFailureOrSuccess: none(),
                ),
              );

              final failureOrSuccess =
                  await iAuthFacade.signinWithEmailAndPassword(
                emailAddress: state.emailAddress,
                password: state.password,
              );
              failureOrSuccess.map((r) async {
                emit(
                  state.copyWith(
                    userIsAuthorised: true,
                    showErrorMessages: true,
                    isSubmitting: false,
                    authFailureOrSuccess: some(failureOrSuccess),
                  ),
                );
                debugPrint(jsonDecode(r.body).toString());
                Map<String, dynamic> userData = jsonDecode(r.body);

                user = User(
                  uid:
                      UniqueId.alreadyUnique(userData["_id"]?.toString() ?? ""),
                  fullName: FullName(userData["name"] ?? ""),
                  emailAddress: EmailAddress(userData["email"] ?? ""),
                  address: Address(userData["address"] ?? ""),
                  userType: UserType(userData["type"] ?? ""),
                );
                StatePersistance statePersistance = StatePersistance();
                statePersistance.saveUserLoginKey(res: r);
                // String? token =
                //     await statePersistance.getUserLoginKey(key: "loginKey");
                // print("token retrived from storage $token");
                return;
              });

              emit(
                state.copyWith(
                  showErrorMessages: true,
                  isSubmitting: false,
                  authFailureOrSuccess: some(failureOrSuccess),
                ),
              );
            }
          },
          authoriseUser: (e) async {
            String? loginToken = await getLoginTokenKey();
            debugPrint("login token from authorise user $loginToken");
            if (loginToken == null) {
              emit(
                state.copyWith(
                  authFailureOrSuccess: some(
                    left(
                      const AuthFailure.authorisationFailed(),
                    ),
                  ),
                ),
              );
              return;
            }
            emit(
              state.copyWith(
                isSubmitting: true,
                authFailureOrSuccess: none(),
              ),
            );
            final result = await iAuthFacade.authoriseUser(
              tokenKey: TokenKey(loginToken),
            );

            result.map((r) {
              debugPrint(jsonDecode(r.body).toString());
            });
            result.fold(
              (l) {
                l.maybeMap(authorisationFailed: (_) {
                  return left(
                    const AuthFailure.authorisationFailed(),
                  );
                }, orElse: () {
                  return null;
                });
              },
              (r) {
                debugPrint("user is authorise in right bloc");
                emit(
                  state.copyWith(
                    isSubmitting: false,
                    userIsAuthorised: true,
                    authFailureOrSuccess: some(
                      right(r),
                    ),
                  ),
                );
                return;
              },
            );
          },
          authPageChanged: (e) {
            authPage = e.authPage;
            emit(
              state.copyWith(authPage: e.authPage),
            );
          },
          countryChanged: (e) {
            emit(
              state.copyWith(
                countryCode: CountryCode(e.countryCode),
                phoneCode: PhoneCode(e.phoneCode),
                authFailureOrSuccess: none(),
              ),
            );
          },
          fullNameChanged: (e) {
            emit(
              state.copyWith(
                fullName: FullName(e.fullName),
              ),
            );
          },
          logout: (e) async {
            nameController.clear();
            passwordController.clear();
            emailController.clear();
            phoneNumberController.clear();
            emailPhoneNumberController.clear();

            bool isLoggedOut = await iAuthFacade.logout(loginKey: "loginKey");
            debugPrint("from auth bloc logout : $isLoggedOut");
            emit(
              state.copyWith(
                showErrorMessages: false,
                userIsAuthorised: !isLoggedOut,
              ),
            );
          },
          authoriseAdmin: (e) async {
            String? loginToken = await getLoginTokenKey();
            debugPrint("login token from authorise admin $loginToken");

            if (loginToken == null) {
              emit(
                state.copyWith(
                  authFailureOrSuccess: some(
                    left(
                      const AuthFailure.adminAuthorisationFailed(),
                    ),
                  ),
                ),
              );
              return;
            }

            final result = await iAuthFacade.authoriseAdmin(
                tokenKey: TokenKey(loginToken));
            result.fold((l) {
              debugPrint("from admin authorisation 1");
              debugPrint("from admin authorisation error is $l");
              emit(
                state.copyWith(
                  authFailureOrSuccess: some(result),
                  userIsAdmin: false,
                ),
              );
            }, (r) {
              debugPrint("from admin authorisation 2");
              emit(
                state.copyWith(
                  authFailureOrSuccess: some(result),
                  userIsAuthorised: true,
                  userIsAdmin: true,
                ),
              );
            });
          },
        );
      },
    );
  }
}
