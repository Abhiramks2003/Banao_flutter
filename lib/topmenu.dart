// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class TopMenu {
  static AppBar topMenuItems() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: 30,
            child: Image.asset('lib/icons/Menu.png'),
          ),
        ),
      ),
      actions: [
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 30,
              child: Image.asset('lib/icons/msg.png'),
            ),
          ),
        ),
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 30,
              child: Image.asset('lib/icons/bell.png'),
            ),
          ),
        )
      ],
    );
  }
}
