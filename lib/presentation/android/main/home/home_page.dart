import 'package:amazon_mvvm_clone/presentation/android/main/home/widgets/address_box.dart';
import 'package:amazon_mvvm_clone/presentation/android/main/home/widgets/carousel_image.dart';
import 'package:amazon_mvvm_clone/presentation/android/main/home/widgets/category.dart';
import 'package:amazon_mvvm_clone/presentation/android/main/home/widgets/deal_of_day.dart';
//import 'package:amazon_mvvm_clone/view_model/bloc/home/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../application/bloc/auth/login_signup/auth_bloc.dart';
import '../../../../constants/global_variables.dart';
//import '../../../../model/data_model/user.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //HomeBloc homeBloc = BlocProvider.of<HomeBloc>(context);
    //User user = homeBloc.appRepository.userRepository.getUser;
    AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        debugPrint("in home page  block");
        if (state.userIsAuthorised == false) {
          debugPrint("user is logged out");
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.popAndPushNamed(
              context,
              "auth-page",
            );
          });
        }
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: AppBar(
              actions: [
                IconButton(
                  onPressed: () {
                    debugPrint("added logout event");
                    authBloc.add(
                      const AuthEvent.logout(),
                    );
                  },
                  icon: const Icon(Icons.logout_outlined),
                ),
              ],
              title: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 42,
                      margin: const EdgeInsets.only(left: 15),
                      child: Material(
                        elevation: 1,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(7),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Search Amazon.in',
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.only(top: 10),
                            prefixIcon: InkWell(
                              onTap: () {},
                              child: const Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ),
                            ),
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(7.0),
                                ),
                                borderSide: BorderSide.none),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(7.0),
                              ),
                              borderSide: BorderSide(
                                color: Colors.black38,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 42,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Icon(
                      Icons.mic,
                      color: Colors.black,
                      size: 25,
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
          body: const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                AddressBox(),
                SizedBox(
                  height: 10,
                ),
                Category(),
                SizedBox(
                  height: 10,
                ),
                CarouselImage(),
                SizedBox(
                  height: 10,
                ),
                DealOfDay(),
              ],
            ),
          ),
        );
      },
    );
  }
}
