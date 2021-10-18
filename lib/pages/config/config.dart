import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navneet/cubit/login_cubit.dart';
import 'package:navneet/data/loginRepo.dart';
import 'package:navneet/pages/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<LoginCubit>(
        create: (context) => LoginCubit(LoginRepo()),
        child: HomePage(),
      ),
    );
  }
}
