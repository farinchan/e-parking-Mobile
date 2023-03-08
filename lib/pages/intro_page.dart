import 'package:e_parking_mobile/color.dart';
import 'package:e_parking_mobile/pages/login_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login Page"),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40),
            const Text(
              "Welcome",
              style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
            SizedBox(height: 30),
            const Text(
              "E-parking Mobile \n UIN Sjech M.Djamil Djambek Bukittinggi",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
            Image.asset("assets/images/ilustrasi1.png"),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ));
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
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
    );
  }
}
