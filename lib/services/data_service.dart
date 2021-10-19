import 'dart:convert';

import 'package:http/http.dart';
import 'package:navneet/data/model/login.dart';

class NetworkService {
  final baseUrl = "http://api.navnitblister.com/api";

  Future<LoginModel> validateLogin(Map<String, String> loginObj) async {
    final response = await post(Uri.parse(baseUrl + "/UserAuth/ValidateLogin"),
        body: loginObj);
    // print(response.body);
    return LoginModel.fromJson(jsonDecode(response.body));
  }
}
