import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:healthy_pet_ui/styles/appcolor.dart';
import 'package:hexcolor/hexcolor.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  void onTaped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 25,
        type: BottomNavigationBarType.fixed,
        backgroundColor: HexColor(AppColor.white),
        fixedColor: HexColor(AppColor.primaryColor),
        onTap: onTaped,
        selectedFontSize: 13,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        elevation: 20,
        selectedLabelStyle:
            TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.w700),
        unselectedLabelStyle:
            TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.w500),
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.heart), label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.messageSquare), label: "Message"),
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.user), label: "Profile")
        ]);
  }
}

/*

 BottomNavigationBar(
        iconSize: 25,
        type: BottomNavigationBarType.fixed,
        backgroundColor: HexColor(AppColor.white),
        fixedColor: HexColor(AppColor.primaryColor),
        onTap: onTaped,
        selectedFontSize: 13,
        selectedLabelStyle:
            TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.w600),
        unselectedLabelStyle:
            TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.w400),
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.heart), label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.messageSquare), label: "Message"),
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.user), label: "Profile")
        ]);

*/