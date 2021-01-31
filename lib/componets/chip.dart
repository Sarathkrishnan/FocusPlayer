import 'package:flutter/material.dart';
import 'package:focus_player/constants/constants.dart';

class MyChips extends StatelessWidget {
  MyChips({this.text,this.active});
  final String text;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: active?kYellow:Colors.white),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
      margin: const EdgeInsets.all(8.0),
      child: Text(text),
    );
  }
}