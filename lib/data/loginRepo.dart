import 'package:navneet/data/model/login.dart';

abstract class LoginRepository {
  /// Throws [NetworkException]
  Future<String> fetchlogin({required String email, required String password});
}

class LoginRepo implements LoginRepository {
  @override
  Future<String> fetchlogin({required String email, required String password}) {
    return Future.delayed(Duration(seconds: 1), () {
      if (email == '') {
        throw NetworkException();
      }

      return email;
    });
  }
}

class NetworkException implements Exception {}
