// ignore_for_file: prefer_const_constructors

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:navneet/data/loginRepo.dart';
import 'package:navneet/data/model/login.dart';
import 'package:navneet/services/networkRequest.dart';
import 'package:navneet/utils/methodUtils.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(const LoginInitial());

  final LoginRepo loginRepo;

  Future<void> validateLogin(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      if (email == "") {
        emit(LoginError("Enter your Mobile Number"));
      } else if (password == "") {
        emit(LoginError("Enter your Password"));
      } else if (await MethodUtils.isInternetPresent()) {
        // await [Permission.phone].request();

        String loginModel =
            await loginRepo.fetchlogin(email: email, password: password);

        print(loginModel.toString());
      } else {}
      emit(LoginError("No Internet"));
    } catch (e) {
      emit(LoginError(e.toString()));
    }
  }
}
