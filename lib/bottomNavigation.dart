import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:saku_santri/global.dart';
import 'package:saku_santri/pages/home.dart';
import 'package:saku_santri/pages/profile.dart';
import 'package:saku_santri/pages/inbox.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _selectedScreenIndex = 0;
  final List _screens = [
    const Home(),
    const Inbox(),
    const Profile(),
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  static const TextStyle labelStyle = TextStyle(fontSize: 10, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorPalette.lightgrey,
        unselectedItemColor: ColorPalette.grey,
        selectedItemColor: ColorPalette.red,
        selectedLabelStyle: labelStyle,
        unselectedLabelStyle: labelStyle,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
                padding: EdgeInsets.only(bottom: 2),
                child: Icon(
                  FeatherIcons.home,
                  size: 20,
                )),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Padding(
                padding: EdgeInsets.only(bottom: 2),
                child: Icon(
                  FeatherIcons.inbox,
                  size: 20,
                )),
            label: 'Pesan',
          ),
          BottomNavigationBarItem(
            icon: Padding(
                padding: EdgeInsets.only(bottom: 2),
                child: Icon(
                  FeatherIcons.user,
                  size: 20,
                )),
            label: 'Akun',
          ),
        ],
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
      ),
    );
  }
}
