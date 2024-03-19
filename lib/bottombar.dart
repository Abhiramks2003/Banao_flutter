import 'package:flutter/material.dart';

class Bottombar {
  static List<BottomNavigationBarItem> bottomBarItems(int currentPageIndex) {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        activeIcon: Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset(
            'lib/icons/homepage.png',
            height: 25,
            color: const Color(0xFF598BED),
          ),
        ),
        icon: Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset(
            'lib/icons/homepage.png',
            height: 25,
            color: const Color(0xFF939CA3),
          ),
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        activeIcon: Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset(
            'lib/icons/book.png',
            height: 25,
            color: const Color(0xFF598BED),
          ),
        ),
        icon: Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset(
            'lib/icons/book.png',
            height: 25,
          ),
        ),
        label: 'Learn',
      ),
      BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset(
            'lib/icons/hub.png',
            height: 25,
          ),
        ),
        label: 'Hub',
      ),
      BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset(
            'lib/icons/chat.png',
            height: 25,
          ),
        ),
        label: 'Chat',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.person,
        ),
        label: 'Profile',
      ),
    ];
  }
}
