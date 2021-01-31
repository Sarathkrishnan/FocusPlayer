import 'package:flutter/material.dart';
import 'package:focus_player/constants/constants.dart';

class PlayListCard extends StatelessWidget {
  PlayListCard({this.mainHeading, this.subHeading});
  final String mainHeading;
  final String subHeading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, 'Player');
      },
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: kYellow,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              mainHeading,
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 14.0),
                            ),
                            Text(
                              subHeading,
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 12.0),
                            ),
                          ]),
                    ),
                    IconButton(
                        icon: Icon(Icons.delete, color: kGrey), onPressed: () {}),
                  ],
                ),
              ),
              Container(
                height: 4,
                width: 100,
                color: kGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
