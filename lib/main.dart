import 'package:e_parking_mobile/config/routes.dart';
import 'package:e_parking_mobile/pages/intro_page.dart';
import 'package:e_parking_mobile/provider/bottom_navigation_provider.dart';
import 'package:e_parking_mobile/provider/login_provider.dart';
import 'package:e_parking_mobile/provider/profile_provider.dart';
import 'package:e_parking_mobile/provider/register_provider.dart';
import 'package:e_parking_mobile/provider/voucher_provider.dart';
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
        ChangeNotifierProvider(
          create: (context) => RegisterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProfileProvider()..getProfile(),
        ),
        ChangeNotifierProvider(
          create: (context) => VoucherProvider(),
        ),
      ],
      child: MaterialApp.router(
        title: "E-Parking",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        routeInformationParser: routes.routeInformationParser,
        routerDelegate: routes.routerDelegate,
        routeInformationProvider: routes.routeInformationProvider,
      ),
    );
  }
}
