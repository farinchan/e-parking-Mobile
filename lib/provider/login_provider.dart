import 'package:e_parking_mobile/data/api_services.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginProvider extends ChangeNotifier {
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passC = TextEditingController();

  String? emailE;
  String? passE;

  void Login(BuildContext context) async {
    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailC.text);

    if (emailC.text == "") {
      emailE = "email Ini Harus Diisi";
    } else if (!emailValid) {
      emailE = "Email ini tidak valid";
    } else {
      emailE = null;
    }

    if (passC.text == "") {
      passE = "Password Harus Diisi";
    } else if (passC.text.length < 8) {
      passE = "password harus lebih dari 8 karakter";
    } else {
      passE = null;
    }

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (emailE == null && passE == null) {
      var result = await ApiServices()
          .loginEndpoint({"email": emailC.text, "password": passC.text});
      print(result.toString());
      await prefs.setString('token', result["token"]);
      context.goNamed("home");
    }
  }

  bool logoutState = false;
  void logout() {
    logoutState = !logoutState;
    notifyListeners();
  }
}
