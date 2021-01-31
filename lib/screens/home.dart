import 'package:flutter/material.dart';
import 'package:focus_player/componets/chip.dart';
import 'package:focus_player/componets/coustom_button.dart';
import 'package:focus_player/componets/homeCard.dart';
import 'package:focus_player/constants/constants.dart';

class Home extends StatefulWidget {
  static String id = 'Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomButton(
                  text: 'IMPORT PLAY LIST',
                ),
                CustomButton(
                  text: 'CREATE PLAY LIST',
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, top: 16.0),
                  child: Center(
                    child: Text('SAVED PLAY LIST'),
                  ),
                ),
                Wrap(
                  children: [
                    MyChips(
                      text: 'All play lists',
                      active: true,
                    ),
                    MyChips(
                      text: 'Completed list',
                      active: false,
                    ),
                    MyChips(
                      text: 'Started list',
                      active: false,
                    ),
                  ],
                ),
                for (var i = 0; i < 10; i++)
                  HomePlayListCard(
                    mainHeading: 'Introduction to Programming and Problem solving',
                    subHeading: 'Rice university',
                  ),
        ],
            ),
          ),
        ),
      ),
    );
  }
}

