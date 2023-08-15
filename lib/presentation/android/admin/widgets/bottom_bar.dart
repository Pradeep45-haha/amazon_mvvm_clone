import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../application/bloc/admin/admin_bloc.dart';
import '../../../../constants/global_variables.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late AdminBloc adminBloc;
  @override
  void initState() {
    adminBloc = BlocProvider.of<AdminBloc>(context);
    super.initState();
  }

  double bottomBarWdth = 42;
  double bottomBarBorderWidth = 5;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminBloc, AdminState>(
      builder: (context, state) {
        return Scaffold(
          body: BlocProvider.value(
            value: BlocProvider.of<AdminBloc>(context),
            child: adminBloc.currentPage,
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              adminBloc.add(
                AdminEvent.pageChanged(
                  page: value,
                ),
              );
            },
            currentIndex: adminBloc.pageIndex,
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
                        color: adminBloc.pageIndex == 0
                            ? GlobalVariables.selectedNavBarColor
                            : Colors.transparent,
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.home_outlined,
                  ),
                ),
                label: "Products",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: bottomBarWdth,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: bottomBarBorderWidth,
                        color: adminBloc.pageIndex == 1
                            ? GlobalVariables.selectedNavBarColor
                            : Colors.transparent,
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.analytics_outlined,
                  ),
                ),
                label: "Analytics",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: bottomBarWdth,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: bottomBarBorderWidth,
                        color: adminBloc.pageIndex == 2
                            ? GlobalVariables.selectedNavBarColor
                            : Colors.transparent,
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.all_inbox_outlined,
                  ),
                ),
                label: "Order",
              ),
            ],
          ),
        );
      },
    );
  }
}
