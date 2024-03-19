import 'package:flutter/material.dart';

class ProgramItems {
  String title;
  String description;
  String image;
  int lesson;
  ProgramItems(
      {required this.title,
      required this.description,
      required this.image,
      required this.lesson});
  static List<ProgramItems> getPrograms() {
    List<ProgramItems> programs = [];
    programs.add(ProgramItems(
      title: 'LIFESTYLE',
      description: 'A complete guide for your new born baby',
      image: 'lib/program_images/lifestyle.png',
      lesson: 16,
    ));
    programs.add(ProgramItems(
      title: 'WORKING PARENTS',
      description: 'Understanding of human behaviour',
      image: 'lib/program_images/lifestyle.png',
      lesson: 12,
    ));
    return programs;
  }
}
