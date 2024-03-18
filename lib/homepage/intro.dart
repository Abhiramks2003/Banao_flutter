import 'package:flutter/material.dart';

class Intro {
  static Container introItems() {
    return Container(
      padding: const EdgeInsets.all(5),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hello,Priya!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              )),
          Text('What do you wanna learn today?',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF6D747A),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter'))
        ],
      ),
    );
  }
}
