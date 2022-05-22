import 'dart:async';
import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:question_answer/main_screen.dart';


void main() {

  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  void initState() {
    Timer(
        const Duration(seconds: 5),() {
      launchScreen();
    }
    );
    super.initState();
  }

  launchScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SplashScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).primaryColorDark,
        statusBarIconBrightness: Brightness.light
    ));


    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: SizedBox(
                width: 260,
                height: 260,
                child: Image.asset(
                    "assets/images/splash_image.png"
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
