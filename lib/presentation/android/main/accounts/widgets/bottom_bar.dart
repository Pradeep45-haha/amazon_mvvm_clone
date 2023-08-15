import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:amazon_mvvm_clone/constants/global_variables.dart';

import '../../../../../application/bloc/home/home_bloc.dart';
import '../../../../../application/bloc/home/home_event.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late HomeBloc homeBloc;
  @override
  void initState() {
    homeBloc = BlocProvider.of<HomeBloc>(context);
    super.initState();
  }

  double bottomBarWdth = 42;
  double bottomBarBorderWidth = 5;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          body: BlocProvider.value(
            value: BlocProvider.of<HomeBloc>(context),
            child: homeBloc.currentPage,
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              homeBloc.add(
                ChangePageEvent(
                  pageIndex: value,
                ),
              );
            },
            currentIndex: homeBloc.pageIndex,
            selectedItemColor: GlobalVariables.selectedNavBarColor,
            unselectedItemColor: GlobalVariables.unselectedNavBarColor,
            backgroundColor: GlobalVariables.backgroundColor,
            iconSize: 28,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  width: bottomBarWdth,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: bottomBarBorderWidth,
                        color: homeBloc.pageIndex == 0
                            ? GlobalVariables.selectedNavBarColor
                            : Colors.transparent,
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.home_outlined,
                  ),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: bottomBarWdth,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: bottomBarBorderWidth,
                        color: homeBloc.pageIndex == 1
                            ? GlobalVariables.selectedNavBarColor
                            : Colors.transparent,
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.person_outlined,
                  ),
                ),
                label: "Accounts",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: bottomBarWdth,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: bottomBarBorderWidth,
                        color: homeBloc.pageIndex == 2
                            ? GlobalVariables.selectedNavBarColor
                            : Colors.transparent,
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                  ),
                ),
                label: "Cart",
              ),
            ],
          ),
        );
      },
    );
  }
}
