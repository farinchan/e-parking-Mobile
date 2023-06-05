import 'package:e_parking_mobile/data/api_services.dart';
import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier {
  String? uid;
  String? nama;
  String? email;
  String? password;
  String? phone;
  String? telegram;
  Future<void> getProfile() async {
    var result = await ApiServices().ProfileEndpoint();
    uid = result.result.uid;
    nama = result.result.userNama;
    email = result.result.userEmail;
    password = result.result.userPassword;
    phone = result.result.userPhone;
    telegram = result.result.userTelegram;
    notifyListeners();
  }
}
