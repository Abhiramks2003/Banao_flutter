import 'package:banao_flutter/homepage/home_menu.dart';
import 'package:banao_flutter/homepage/intro.dart';
import 'package:banao_flutter/homepage/program_4_u.dart';
import 'package:flutter/material.dart';

class HomePage {
  static ListView homepageList() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Intro.introItems(),
        HomePageMenu.homePageMenuItems(),
        Programs.programItems(),
        Programs.programItems(),
      ],
    );
  }
}
