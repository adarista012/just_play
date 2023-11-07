import 'package:get/get.dart';

class LoginController extends GetxController {
  final String _title = "Log In";
  String get title => _title;

  String? _email;
  String? _password;

  String? _emailError;
  String? get emailError => _emailError;

  String? _passwordError;
  String? get passwordError => _passwordError;

  emailOnChanged(String? str) {
    _emailError = null;
    _email = str;
    if (_email!.isEmpty) {
      _emailError = "This field can not be empty";
    }
    if (!GetUtils.isEmail(_email!) && _email!.isNotEmpty) {
      _emailError = "Invalid email address";
    }

    update();
  }

  passwordOnChanged(String? str) {
    _passwordError = null;
    _password = str;
    if (_password!.isEmpty) {
      _passwordError = "This field can not be empty";
    }
    if (_password!.isNotEmpty && _password!.length < 4) {
      _passwordError = "Password must be longer than four characters";
    }
    update();
  }

  void login() {
    if (_emailError == null &&
        _passwordError == null &&
        _email != null &&
        _password != null &&
        _email!.isNotEmpty &&
        _password!.isNotEmpty) {
      print("login");
    }
    update();
  }
}
