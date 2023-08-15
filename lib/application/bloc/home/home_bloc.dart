import 'package:amazon_mvvm_clone/domain/repository/app_repository.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
// ignore: depend_on_referenced_packages, unnecessary_import
import 'package:meta/meta.dart';
import '../../../presentation/android/main/accounts/account_page.dart';
import '../../../presentation/android/main/cart/cart_page.dart';
import '../../../presentation/android/main/home/home_page.dart';
import 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AppRepository appRepository;
  int pageIndex = 0;
  List<Widget> pages = const [
    HomePage(),
    AccountPage(),
    CartPage(),
  ];
  Widget currentPage = const HomePage();
  HomeBloc({required this.appRepository}) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      if (event is ChangePageEvent) {
        pageIndex = event.pageIndex;
        currentPage = pages[pageIndex];
        emit(PageChangedState());
      }
    });
  }
}
