import 'package:budgetsaku/screens/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 3;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    const Text("Wallet"),
    const Text("Note"),
    const Text("Profile")
  ];

  void _onItemTapped(int index) {
    // _selectedIndex = index;
    // print('Tapped index is ${_selectedIndex}');
    // print("Tapped index is "+ _selectedIndex.toString());
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Budget Saku"),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(0x412F2F),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_folder_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_folder_filled),
                label: "Wallet"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_note_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_note_filled),
                label: "Note"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: "Profile"),
          ]),
    );
  }
}
