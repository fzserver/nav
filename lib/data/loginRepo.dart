// ignore_for_file: file_names
import 'package:navneet/services/data_service.dart';

import 'model/login.dart';

class LoginRepo {
  final NetworkService networkService;

  LoginRepo({required this.networkService});

  Future<LoginModel> validatingLogin(String email, String password) async {
    final todoObj = {"userEmail": email, "password": password};

    final loginRes = await networkService.validateLogin(todoObj);

    return loginRes;
  }
}
