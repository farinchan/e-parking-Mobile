import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:e_parking_mobile/data/models/profile_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiServices {
  final String _url = "http://10.0.2.2:3000/api";
  // String _url = "http://192.168.100.123:3000/api";
  Dio dio = Dio();

  Future<Map<String, dynamic>> loginEndpoint(Object? data) async {
    log("$_url/login");
    try {
      var response = await dio.post("$_url/login", data: data);
      log(response.data.toString());

      return response.data;
    } on DioError catch (e) {
      log(e.toString());
      if (e.response!.statusCode == 400) {
        return e.response?.data;
      } else {
        return {
          "status": "failed",
          "message": "Terjadi Kesalahan (Error : ${e.toString()})"
        };
      }
    }
  }

  Future<Map<String, dynamic>> RegisterEndpoint(Object? data) async {
    log("$_url/login");
    try {
      var response = await dio.post("$_url/register", data: data);
      log(response.data.toString());

      return response.data;
    } on DioError catch (e) {
      log(e.toString());
      if (e.response!.statusCode == 400) {
        return e.response?.data;
      } else {
        return {
          "status": "failed",
          "message": "Terjadi Kesalahan (Error : ${e.toString()})"
        };
      }
    }
  }

  Future<Profile> ProfileEndpoint() async {
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    log("$_url/login");
    var response = await dio.get("$_url/register",
        options: Options(headers: {"auth-token": token}));
    log(response.data.toString());
    return Profile.fromJson(jsonDecode(response.data));
  }
}
