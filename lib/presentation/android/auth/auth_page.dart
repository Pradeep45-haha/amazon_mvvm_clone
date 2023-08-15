import 'package:amazon_mvvm_clone/constants/global_variables.dart';
import 'package:amazon_mvvm_clone/presentation/common_widgets/text_input.dart';
import 'package:amazon_mvvm_clone/presentation/common_widgets/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/bloc/auth/login_signup/auth_bloc.dart';
//impelement the navigate to admin page feature
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context);
    debugPrint("from auth page");
    debugPrint(authBloc.state.userIsAuthorised.toString());
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundColor,
      body: SafeArea(
        //the main page
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 8.0),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.5, color: Colors.grey),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlocConsumer<AuthBloc, AuthState>(
                        listener: (context, state) {
                          if (state.showErrorMessages == true) {
                            state.authFailureOrSuccess.fold(
                              () => null,
                              (a) {
                                a.fold(
                                  (faliure) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          faliure.map(
                                            cancelledByUser: (value) {
                                              return "Cancelled by user";
                                            },
                                            serverError: (value) {
                                              return "Server error";
                                            },
                                            emailInUse: (value) {
                                              return "Email already in use";
                                            },
                                            noSuchEmail: (value) {
                                              return "No such email";
                                            },
                                            incorrectPassword: (value) {
                                              return "Password incorrect";
                                            },
                                            unRegistredEmailId: (value) {
                                              return "Email id not registered";
                                            },
                                            authorisationFailed: (value) {
                                              return "User authorisation failed";
                                            },
                                            adminAuthorisationFailed: (value) {
                                              return "You are not registred as admin";
                                            },
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  (r) {
                                    debugPrint("user is authorised 0");
                                    if (state.userIsAuthorised) {
                                      WidgetsBinding.instance
                                          .addPostFrameCallback(
                                        (_) {
                                          Navigator.pushNamedAndRemoveUntil(
                                              context,
                                              "home-page",
                                              (route) => false);
                                        },
                                      );
                                    }
                                  },
                                );
                              },
                            );
                          }
                        },
                        //sign up
                        builder: (context, state) {
                          return Column(
                            children: [
                              ListTile(
                                leading: Radio(
                                  activeColor: GlobalVariables.secondaryColor,
                                  value: AuthPageGroup.signupPage,
                                  groupValue: state.authPage,
                                  onChanged: (value) {
                                    if (value == AuthPageGroup.loginPage) {
                                      authBloc.add(
                                        const AuthEvent.authPageChanged(
                                          authPage: AuthPageGroup.loginPage,
                                        ),
                                      );
                                    }
                                    if (value == AuthPageGroup.signupPage) {
                                      authBloc.add(
                                        const AuthEvent.authPageChanged(
                                          authPage: AuthPageGroup.signupPage,
                                        ),
                                      );
                                    }
                                  },
                                ),
                                title: const Row(
                                  children: [
                                    Wrap(
                                      direction: Axis.vertical,
                                      children: [
                                        Text(
                                          "Create account. ",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "New to Amazon?",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                                  if (state.authPage ==
                                      AuthPageGroup.signupPage) {
                                    return Form(
                                      autovalidateMode:
                                          state.showErrorMessages == true
                                              ? AutovalidateMode.always
                                              : AutovalidateMode.disabled,
                                      key: authBloc.signupFormKey,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            //for first and last name
                                            child: CustomTextField(
                                              onChanged: (value) {
                                                 debugPrint("signup form key ${authBloc.signupFormKey.currentState.toString()}");
                                                if (value != null) {
                                                  authBloc.add(
                                                    AuthEvent.fullNameChanged(
                                                      fullName: value,
                                                    ),
                                                  );
                                                }
                                              },
                                              validator: (value) {
                                                return state.fullName.value
                                                    .fold(
                                                        (f) => f.maybeMap(
                                                                invalidFullName:
                                                                    (_) {
                                                              return "Full name is invalid";
                                                            }, orElse: () {
                                                              return null;
                                                            }),
                                                        (r) => null);
                                              },
                                              controller:
                                                  authBloc.nameController,
                                              hintText: "First and last name",
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 12.0),
                                                  child: InkWell(
                                                    onTap: () {
                                                      showDialog(
                                                        context: context,
                                                        builder:
                                                            (BuildContext _) {
                                                          return BlocProvider
                                                              .value(
                                                            value: BlocProvider
                                                                .of<AuthBloc>(
                                                                    context),
                                                            child:
                                                                const CountryCodePicker(),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: Container(
                                                      constraints:
                                                          const BoxConstraints(
                                                              maxWidth: 120),
                                                      alignment:
                                                          Alignment.center,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              5,
                                                      height: 52,
                                                      decoration: BoxDecoration(
                                                          boxShadow:  [
                                                            BoxShadow(
                                                              blurRadius: 3,
                                                              blurStyle:
                                                                  BlurStyle
                                                                      .outer,
                                                              color: Colors
                                                                  .grey[350]!,
                                                                  //org grey(350)
                                                            ),
                                                          ],
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .all(
                                                            Radius.circular(
                                                                8.0),
                                                          ),
                                                          border: Border.all(
                                                              color:
                                                                  Colors.grey,
                                                              width: .5)),
                                                      child: BlocBuilder<
                                                          AuthBloc, AuthState>(
                                                        builder:
                                                            (context, state) {
                                                          return Text(
                                                            "${state.countryCode.getOrCrash()} ${state.phoneCode.getOrCrash()}",
                                                            style: const TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  //for email address
                                                  child: CustomTextField(
                                                    onChanged: (value) {
                                                      if (value != null) {
                                                        authBloc.add(
                                                          AuthEvent
                                                              .emailChanged(
                                                                  email: value),
                                                        );
                                                      }
                                                    },
                                                    validator: (value) {
                                                      return state
                                                          .emailAddress.value
                                                          .fold(
                                                              (f) => f.maybeMap(
                                                                      invalidEmail:
                                                                          (_) {
                                                                    return "Email is invalid";
                                                                  }, orElse:
                                                                          () {
                                                                    return null;
                                                                  }),
                                                              (r) => null);
                                                    },
                                                    controller: authBloc
                                                        .emailPhoneNumberController,
                                                    hintText:
                                                        "Email or phone number",
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            //for password
                                            child: CustomTextField(
                                              onChanged: (value) {
                                                if (value != null) {
                                                  authBloc.add(
                                                    PasswordChanged(
                                                        password: value),
                                                  );
                                                }
                                              },
                                              controller:
                                                  authBloc.passwordController,
                                              hintText: "Set password",
                                              validator: (value) {
                                                return state.password.value
                                                    .fold(
                                                        (f) => f.maybeMap(
                                                                weakPassword:
                                                                    (_) {
                                                              return "Password is too weak";
                                                            }, shortPassword:
                                                                    (_) {
                                                              return "Password is too short";
                                                            }, orElse: () {
                                                              return null;
                                                            }),
                                                        (r) => null);
                                              },
                                            ),
                                          ),
                                          const Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 6, right: 4.0),
                                                child: Icon(
                                                  Icons.info_outline,
                                                  color: Colors.lightBlue,
                                                ),
                                              ),
                                              Wrap(
                                                direction: Axis.vertical,
                                                children: [
                                                  Text(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    "Password must be atleast 8 characters.",
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 16),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 36,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(6),
                                                ),
                                                color: GlobalVariables
                                                    .secondaryColor,
                                              ),
                                              child: TextButton(
                                                onPressed: () {
                                                  if (authBloc.signupFormKey
                                                      .currentState!
                                                      .validate()) {
                                                    debugPrint(
                                                        "Sign up event added");
                                                    authBloc.add(
                                                      SignupWithEmailAndPassword(
                                                        fullName: authBloc
                                                            .nameController
                                                            .text,
                                                        email: authBloc
                                                            .emailPhoneNumberController
                                                            .text,
                                                        password: authBloc
                                                            .passwordController
                                                            .text,
                                                      ),
                                                    );
                                                  }
                                                },
                                                child: const Text(
                                                  "Sign Up",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                  return const SizedBox();
                                },
                              ),
                            ],
                          );
                        },
                      ),
                      //sign in
                      BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          return Column(
                            children: [
                              ListTile(
                                leading: Radio(
                                  activeColor: GlobalVariables.secondaryColor,
                                  value: AuthPageGroup.loginPage,
                                  groupValue: state.authPage,
                                  onChanged: (value) {
                                    if (value == AuthPageGroup.loginPage) {
                                      authBloc.add(
                                        const AuthEvent.authPageChanged(
                                            authPage: AuthPageGroup.loginPage),
                                      );
                                    }
                                    if (value == AuthPageGroup.signupPage) {
                                      authBloc.add(
                                        const AuthEvent.authPageChanged(
                                            authPage: AuthPageGroup.signupPage),
                                      );
                                    }
                                  },
                                ),
                                title: const Row(
                                  children: [
                                    Wrap(
                                      direction: Axis.vertical,
                                      children: [
                                        Text(
                                          "Sign in. ",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Already a customer?",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                                  if (state.authPage ==
                                      AuthPageGroup.loginPage) {
                                    return Form(
                                      key: authBloc.loginFormKey,
                                      child: Column(
                                        children: [
                                          CustomTextField(
                                            onChanged: (value) {
                                              debugPrint("login form key ${authBloc.loginFormKey.currentState.toString()}");
       
                                              if (value != null) {
                                                authBloc.add(
                                                  AuthEvent.emailChanged(
                                                      email: value),
                                                );
                                              }
                                            },
                                            validator: (value) {
                                              return state.emailAddress.value
                                                  .fold(
                                                      (l) => l.maybeMap(
                                                            invalidEmail: (_) {
                                                              return "Email is invalid";
                                                            },
                                                            orElse: () {
                                                              return null;
                                                            },
                                                          ), (r) {
                                                return null;
                                              });
                                            },
                                            hintText: "Email or phone number",
                                            controller: authBloc
                                                .emailPhoneNumberController,
                                          ),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          CustomTextField(
                                            onChanged: (value) {
                                              if (value != null) {
                                                authBloc.add(
                                                  AuthEvent.passwordChanged(
                                                    password: value,
                                                  ),
                                                );
                                              }
                                            },
                                            validator: (value) {
                                              return state.password.value.fold(
                                                  (l) {
                                                return l.maybeMap(
                                                  shortPassword: (_) {
                                                    return "Password is short";
                                                  },
                                                  weakPassword: (_) {
                                                    return "Password is too weak";
                                                  },
                                                  orElse: () {
                                                    return null;
                                                  },
                                                );
                                              }, (r) => null);
                                            },
                                            hintText: "Password",
                                            controller:
                                                authBloc.passwordController,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 16),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 36,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(6),
                                                ),
                                                color: GlobalVariables
                                                    .secondaryColor,
                                              ),
                                              child: TextButton(
                                                onPressed: () {
                                                  if (authBloc.loginFormKey
                                                      .currentState!
                                                      .validate()) {
                                                    authBloc.add(
                                                      AuthEvent
                                                          .signinWithEmailAndPassword(
                                                        email: state
                                                            .emailAddress
                                                            .getOrCrash(),
                                                        password: state
                                                            .emailAddress
                                                            .getOrCrash(),
                                                      ),
                                                    );
                                                  }
                                                },
                                                child: const Text(
                                                  "Sign In",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                  return const SizedBox();
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
