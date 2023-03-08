import 'package:e_parking_mobile/config/routes.dart';
import 'package:e_parking_mobile/pages/intro_page.dart';
import 'package:e_parking_mobile/provider/bottom_navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavigationProvider(),
        ),
      ],
      child: MaterialApp.router(
        title: "E-Parking",
        theme: ThemeData(primarySwatch: Colors.green),
        routeInformationParser: routes.routeInformationParser,
        routerDelegate: routes.routerDelegate,
        routeInformationProvider: routes.routeInformationProvider,
      ),
    );
  }
}
