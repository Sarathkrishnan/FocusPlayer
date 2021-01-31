import 'package:flutter/material.dart';
import 'package:focus_player/constants/constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.text});
  final text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: FlatButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
            ),
          ),
        ),
        color: kGrey,
      ),
    );
  }
}
