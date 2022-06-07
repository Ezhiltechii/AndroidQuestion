import 'package:flutter/material.dart';

final  Javaquiz = [
  Note(
    title: 'Java',
    content: "*Programming language and a cross-platform" +
        "*High level, robust, object-oriented and secure programming language." +
        "*Platform Independent." +
        "*Simple to write, easy to learn and understand." +
        "*Free to access and run on all platform." +
        "*Lot of applications, websites, and games are developed using Java.",
    image:"assets/images/splash_image.png",
  ),
  Note(
    title: 'Class',
    content: 'Class is a user-defined type',
    image:"assets/images/splash_image.png",
  ),
  Note(
    title: 'Method',
    content: 'Method in Java is a collection of instructions that performs a specific task',
    image:"assets/images/splash_image.png",
  )
];

class Note {
  final String title;
  final String content;
  final String image;

  Note({required this.title, required this.content, required this.image});
}

TextStyle styleWidget() {
  return TextStyle(
    fontSize:16,
    color: Colors.red, fontWeight: FontWeight.w500,
    //  fontFamily: Fonts.poppins_medium
  );
}

