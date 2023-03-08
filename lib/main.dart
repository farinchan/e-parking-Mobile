
import 'package:e_parking_mobile/pages/intro_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-Parking",
      home: IntroPage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
