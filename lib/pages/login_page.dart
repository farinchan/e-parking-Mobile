import 'package:e_parking_mobile/color.dart';
import 'package:e_parking_mobile/provider/login_provider.dart';
import 'package:e_parking_mobile/widget/textfield_costum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

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
                "Smart Parking",
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
              controller: Provider.of<LoginProvider>(context).emailC,
            ),
            SizedBox(height: 10),
            TextFieldCustom(
              label: "Email",
              isPassword: true,
              hintText: "Enter Your Password",
              controller: Provider.of<LoginProvider>(context).passC,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Lupa Password",
                      style: TextStyle(color: Colors.red),
                    )),
              ],
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Provider.of<LoginProvider>(context, listen: false)
                    .Login(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 50,
                alignment: Alignment.center,
                child: const Text(
                  "Login",
                  style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum punya akun?"),
                TextButton(
                    onPressed: () {
                      context.goNamed("register");
                    },
                    child: Text("Daftar Disini"))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
