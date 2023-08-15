import 'package:amazon_mvvm_clone/application/bloc/admin/product/bloc/product_bloc.dart';
import 'package:amazon_mvvm_clone/constants/global_variables.dart';
import 'package:amazon_mvvm_clone/domain/repository/app_repository.dart';
import 'package:amazon_mvvm_clone/domain/repository/cart_repository.dart';
import 'package:amazon_mvvm_clone/domain/repository/product_repository.dart';
import 'package:amazon_mvvm_clone/domain/repository/user_repository.dart';
import 'package:amazon_mvvm_clone/infrastructure/product/product_facade.dart';
import 'package:amazon_mvvm_clone/presentation/android/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'application/bloc/admin/admin_bloc.dart';
import 'application/bloc/auth/login_signup/auth_bloc.dart';
import 'infrastructure/auth/auth_facade.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  UserRepository userRepository = UserRepository();
  CartRepository cartRepository = CartRepository();
  ProductRepository productRepository = ProductRepository();
  AppRepository appRepository = AppRepository(
    userRepository: userRepository,
    cartRepository: cartRepository,
    productRepository: productRepository,
  );

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(
            iAuthFacade: AuthFacade(),
            appRepository: appRepository,
          )
            ..add(
              const AuthEvent.authoriseUser(),
            )
            ..add(
              const AuthEvent.authoriseAdmin(),
            ),
        ),
        BlocProvider<AdminBloc>(
          create: (context) => AdminBloc(
            appRepository: appRepository,
          ),
        ),
        BlocProvider<ProductBloc>(
          create: (context) {
            print("get product event added from main");
            return ProductBloc(
              appRepository: appRepository,
             // iImageFacade: ImageFacade(),
              iProductFacade: ProductFacade(),
            )..add(
                ProductEvent.getProduct(
                  loginToken: null,
                  id: null,
                  category: null,
                  price: null,
                  productName: null,
                ),
              );
          },
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => generateRoute(settings),
      debugShowCheckedModeBanner: false,
      title: 'Amazon',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        primarySwatch: Colors.blue,
      ),
      home: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return state.authFailureOrSuccess.fold(() {
            debugPrint("1 from main");
            debugPrint(
              state.toString(),
            );
            if (state.isSubmitting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            // return const AuthPage();
            return const Center(
              child: CircularProgressIndicator(),
            );
          }, (resultOrFailure) {
            return resultOrFailure.fold((l) {
              debugPrint("from left side in main file");
              debugPrint(l.toString());
              debugPrint("2 from main");
              WidgetsBinding.instance.addPostFrameCallback(
                (_) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "auth-page", (route) => false);
                },
              );
              return const Center(
                child: CircularProgressIndicator(),
              );
              // return const AuthPage();
            }, (r) {
              debugPrint(state.toString());
              if (state.userIsAdmin && state.userIsAuthorised) {
                debugPrint("3 from main");
                WidgetsBinding.instance.addPostFrameCallback(
                  (_) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "admin-page", (route) => false);
                  },
                );
                return const Center(
                  child: CircularProgressIndicator(),
                );
                // return const AdminPage();
              }
              if (state.userIsAuthorised) {
                debugPrint("4 from main");
                WidgetsBinding.instance.addPostFrameCallback(
                  (_) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "home-page", (route) => false);
                  },
                );
                return const Center(
                  child: CircularProgressIndicator(),
                );
                // return const HomePage();
              }
              debugPrint("5 from main");
              WidgetsBinding.instance.addPostFrameCallback(
                (_) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "auth-page", (route) => false);
                },
              );
              return const Center(
                child: CircularProgressIndicator(),
              );
            });
          });
        },
      ),
    );
  }
}
