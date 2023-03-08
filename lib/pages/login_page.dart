import 'package:e_parking_mobile/color.dart';
import 'package:e_parking_mobile/pages/bottom_navigation.dart';
import 'package:e_parking_mobile/widget/textfield_costum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController emailC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 40),
            Image.asset(
              "assets/images/uin.png",
              width: 200,
            ),
            Center(
              child: const Text(
                "E-Parking",
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
            ),
            SizedBox(height: 40),
            TextFieldCustom(
              label: "Email",
              hintText: "Enter Your Email",
              controller: emailC,
            ),
            SizedBox(height: 10),
            TextFieldCustom(
              label: "Email",
              isPassword: true,
              hintText: "Enter Your Password",
              controller: emailC,
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () => context.goNamed("home"),
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
