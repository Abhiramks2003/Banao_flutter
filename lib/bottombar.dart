import 'package:flutter/material.dart';

class Bottombar {
  static BottomNavigationBarItem menuItems(String image, String label) {
    return BottomNavigationBarItem(
      activeIcon: Padding(
        padding: const EdgeInsets.all(5),
        child: Image.asset(
          image,
          height: 25,
          color: const Color(0xFF598BED),
        ),
      ),
      icon: Padding(
        padding: const EdgeInsets.all(5),
        child: Image.asset(
          image,
          height: 25,
          color: const Color(0xFF939CA3),
        ),
      ),
      label: label,
    );
  }

  static List<BottomNavigationBarItem> bottomBarItems(int currentPageIndex) {
    return <BottomNavigationBarItem>[
      menuItems('lib/icons/homepage.png', 'Home'),
      menuItems('lib/icons/book.png', 'Learn'),
      menuItems('lib/icons/hub.png', 'Hub'),
      menuItems('lib/icons/chat.png', 'Chat'),
      BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(5),
            child: Image.asset('lib/icons/profile.png', height: 25),
          ),
          label: 'Profile')
    ];
  }
}
