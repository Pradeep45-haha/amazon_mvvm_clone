import 'package:amazon_mvvm_clone/constants/global_variables.dart';
import 'package:amazon_mvvm_clone/presentation/android/main/accounts/widgets/order.dart';
import 'package:amazon_mvvm_clone/presentation/android/main/accounts/widgets/user_bar.dart';
import 'package:flutter/material.dart';
import 'widgets/top_buttons.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          title: Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  "assets/images/amazon_in.png",
                  color: Colors.black,
                  width: 120,
                  height: 45,
                  fit: BoxFit.contain,
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              const SizedBox(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.notifications),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    )
                  ],
                ),
              ),
            ],
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
        ),
      ),
      body: const Column(
        children: [
          UserBar(),
          SizedBox(
            height: 10,
          ),
          TopButton(),
          SizedBox(height: 20,),
          Orders(),
        ],
      ),
    );
  }
}
