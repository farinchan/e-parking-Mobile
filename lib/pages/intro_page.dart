import 'package:e_parking_mobile/color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login Page"),
      // ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                "Smart Parking Mobile \n UIN Sjech M.Djamil Djambek Bukittinggi",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(height: 100),
              Image.asset(
                "assets/images/ilustrasi1.png",
                width: MediaQuery.of(context).size.width - 80,
              ),
              SizedBox(height: 200),
              InkWell(
                onTap: () => context.goNamed("login"),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
