import 'package:flutter/material.dart';
import 'package:focus_player/constants/constants.dart';
class HomePlayListCard extends StatelessWidget {
  HomePlayListCard({this.mainHeading, this.subHeading});
  final String mainHeading;
  final String subHeading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, 'Playlist');
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
