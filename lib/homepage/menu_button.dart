import 'package:flutter/material.dart';

class MenuButton {
  static Container menuButtons(String imgpath, String text) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF598BED),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8.0)),
      child: TextButton.icon(
          onPressed: () {},
          icon: Padding(
            padding: const EdgeInsets.all(5),
            child: Image.asset(
              imgpath,
              height: 25,
              width: 25,
            ),
          ),
          label: Text(
            text,
            style: const TextStyle(
                color: Color(0xFF598BED), fontWeight: FontWeight.w600),
          )),
    );
  }
}
