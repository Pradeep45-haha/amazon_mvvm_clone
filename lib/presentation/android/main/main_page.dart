import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/bloc/home/home_bloc.dart';
import 'accounts/widgets/bottom_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = BlocProvider.of<HomeBloc>(context);
    return Scaffold(
      body: BlocProvider(
        create: (context) => HomeBloc(
          appRepository: homeBloc.appRepository,
        ),
        child: const BottomBar(),
      ),
    );
  }
}
