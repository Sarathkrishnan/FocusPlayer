import 'dart:async';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:focus_player/constants/constants.dart';
import 'package:focus_player/screens/home.dart';

class SpashScreen extends StatefulWidget {
  static String id = 'Splash Screen';

  @override
  _SpashScreenState createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {
  @override
  @override
  void initState() { 
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.popAndPushNamed(context,'Home' );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGrey,
      body: Center(
        child: Container(
          child: Text(
            "Focus Players",
            style: TextStyle(color: kGrey,
            fontWeight: FontWeight.bold
            ),
          ),
          color: kYellow,
          padding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
