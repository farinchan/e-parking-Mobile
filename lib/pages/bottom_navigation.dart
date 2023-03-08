import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_parking_mobile/color.dart';
import 'package:e_parking_mobile/pages/home_page.dart';
import 'package:e_parking_mobile/provider/bottom_navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(
          Provider.of<BottomNavigationProvider>(context).selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(
        color: primaryColor,
        backgroundColor: whiteColor,
        height: 55,
        items: const <Widget>[
          Icon(Icons.home),
          Icon(Icons.currency_exchange),
          Icon(Icons.person_2_rounded)
        ],
        onTap: (value) =>
            Provider.of<BottomNavigationProvider>(context, listen: false)
                .onTap(value),
      ),
    );
  }
}
