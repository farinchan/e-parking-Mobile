import 'package:e_parking_mobile/pages/bottom_navigation.dart';
import 'package:e_parking_mobile/pages/history_page.dart';
import 'package:e_parking_mobile/pages/informasi_page.dart';
import 'package:e_parking_mobile/pages/intro_page.dart';
import 'package:e_parking_mobile/pages/login_page.dart';
import 'package:e_parking_mobile/pages/topup_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter routes = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/intro',
        name: 'intro',
        builder: (BuildContext context, GoRouterState state) {
          return IntroPage();
        },
        routes: [
          GoRoute(
            path: 'login',
            name: "login",
            builder: (BuildContext context, GoRouterState state) {
              return LoginPage();
            },
          ),
        ]),
    GoRoute(
      path: '/home',
      name: "home",
      builder: (BuildContext context, GoRouterState state) {
        return BottomNavigation();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'history',
          name: 'history',
          builder: (BuildContext context, GoRouterState state) {
            return HistoryPage();
          },
        ),
        GoRoute(
          path: 'topup',
          name: 'topup',
          builder: (BuildContext context, GoRouterState state) {
            return TopupPage();
          },
        ),
        GoRoute(
          path: 'informasi',
          name: 'informasi',
          builder: (BuildContext context, GoRouterState state) {
            return InformasiPage();
          },
        ),
      ],
    ),
  ],
  initialLocation: "/intro",
  debugLogDiagnostics: true,
  routerNeglect: true,
);
