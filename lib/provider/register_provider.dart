import 'dart:ffi';

import 'package:e_parking_mobile/data/api_services.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterProvider extends ChangeNotifier {
  final TextEditingController nameC = TextEditingController();
  final TextEditingController phoneC = TextEditingController();
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passC = TextEditingController();

  String? nameE;
  String? phoneE;
  String? emailE;
  String? passE;

  void Login(BuildContext context) async {
    if (nameC.text == "") {
      nameE = "Nama Harus Diisi";
    } else {
      nameE = null;
    }

    if (phoneC.text == "") {
      phoneE = "No.Telp Harus Diisi";
    } else if (phoneC.text.length < 10) {
      phoneE = "No.Telp Tidak Valid";
    } else {
      phoneE = null;
    }

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

    if (nameE == null && phoneE == null && emailE == null && passE == null) {
      var result = await ApiServices().RegisterEndpoint({
        "name": nameC.text,
        "phone": phoneC.text,
        "email": emailC.text,
        "password": passC.text
      });
      print(result.toString());
      context.goNamed("login");
    }
  }
}
