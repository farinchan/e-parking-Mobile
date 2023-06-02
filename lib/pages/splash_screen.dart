import 'dart:async';

import 'package:e_parking_mobile/color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? token;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    final _prefs = await SharedPreferences.getInstance();
    token = _prefs.getString('token');
    var durasiSplash = const Duration(seconds: 2);
    return Timer(durasiSplash, () {
      if (token != null) {
        print("TOKEN AUTHORIZATION : " + token!);
        context.goNamed("home");
      } else {
        print("TOKEN AUTHORIZATION : " + "NULL");
        context.goNamed("intro");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text(
          "Smart Parking",
          style: TextStyle(
              color: primaryColor, fontWeight: FontWeight.bold, fontSize: 32),
        ),
      ),
    );
  }
}
