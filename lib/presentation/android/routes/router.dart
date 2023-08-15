import 'package:amazon_mvvm_clone/presentation/android/admin/admin_page.dart';
import 'package:amazon_mvvm_clone/presentation/android/admin/products/add_products/add_products_page.dart';
import 'package:amazon_mvvm_clone/presentation/android/auth/auth_page.dart';
import 'package:amazon_mvvm_clone/presentation/android/main/home/home_page.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RoutesName.authPage:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthPage(),
      );
    case RoutesName.homePage:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomePage(),
      );
    case RoutesName.addProductPage:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProductsPage(),
      );
    case RoutesName.adminPage:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AdminPage(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("Screen does not exits"),
          ),
        ),
      );
  }
}

class RoutesName {
  static const String authPage = "auth-page";
  static const String homePage = "home-page";
  static const String addProductPage = "add-product-page";
  static const String adminPage = "admin-page";
}
