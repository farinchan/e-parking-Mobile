import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginProvider extends ChangeNotifier {
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passC = TextEditingController();

  String? emailE;
  String? passE;

  void Login() async {
    var url = Uri.parse("http://rfid.gariskode.com/user/login");
    var response = await http.post(url, body: {
      'email': emailC.text,
      'password': passC.text,
    });
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

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
  }
}
