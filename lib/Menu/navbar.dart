import 'package:flutter/material.dart';
import 'package:si_molap/Menu/class_page.dart';
import 'package:si_molap/Menu/home_page.dart';
import 'package:si_molap/Menu/calendar_page.dart';
import 'package:si_molap/Menu/notif_page.dart';
import 'package:si_molap/Properti/element.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  final List<Widget> _tabs = [
    const HomePage(),
    ClassPage(
      items: ['Item 1', 'Item 2', 'Item 3'], // Ganti dengan data yang sesuai
    ),
    const CalendarPage(),
    const NotifPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _tabs[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: abu,
        iconSize: 25,
        selectedItemColor: mainColor,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 28,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_outlined),
            label: 'Class',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: 'Notifications',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
