import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:flutter_app/pages/onboard_1.dart';
import '../pages/home.dart';
import '../pages/onboard_2.dart';
import '../pages/onboard_3.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {




  List<Widget> _buildScreens() {
    return [
      Home(),
      Onboard2(),
      Onboard3(),
      Onboard2(), // Use different pages here
      Onboard3(), // Use different pages here
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black26,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.calendar_today_rounded),
        title: ("Calendar"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black26,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.search,size: 50,),
       // title: ("Search"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black26,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.chat),
        title: ("Messages"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black26,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person_outline_sharp),
        title: ("Profile"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black26,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,

      screens: _buildScreens(),
      items: _navBarsItems(),
      confineToSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.

      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),

      navBarStyle: NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}
