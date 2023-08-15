import 'dart:io';
import 'package:amazon_mvvm_clone/domain/repository/app_repository.dart';
import 'package:amazon_mvvm_clone/presentation/android/admin/products/products_page.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
part 'admin_bloc.freezed.dart';
part 'admin_event.dart';
part 'admin_state.dart';

class AdminBloc extends Bloc<AdminEvent, AdminState> {
  final AppRepository appRepository;
  int pageIndex = 0;
  Widget currentPage = const ProductsPage();
  List<Widget> pages = const [ProductsPage()];
  TextEditingController productNameController = TextEditingController();
  TextEditingController productDescriptionController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();
  TextEditingController productQuantityController = TextEditingController();
  
  String categoryValue = "Mobile";
  List<File> images = [];

  @override
  Future<void> close() {
    productNameController.dispose();
    productDescriptionController.dispose();
    productPriceController.dispose();
    productQuantityController.dispose();
    return super.close();
  }

  AdminBloc({required this.appRepository}) : super(AdminInitial()) {
    on<AdminEvent>((event, emit) async {});
  }
}
