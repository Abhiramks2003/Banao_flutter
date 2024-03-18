import 'package:banao_flutter/homepage/menu_button.dart';
import 'package:flutter/material.dart';

class HomePageMenu {
  static Container homePageMenuItems() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MenuButton.menuButtons(
                  'lib/homepage_icons/programs.png', 'Programs'),
              MenuButton.menuButtons('lib/homepage_icons/help.png', 'Get help'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MenuButton.menuButtons('lib/homepage_icons/learn.png', 'Learn'),
              MenuButton.menuButtons('lib/homepage_icons/dd.png', 'DD Tracker'),
            ],
          ),
        ],
      ),
    );
  }
}
