import 'package:flutter/material.dart';
import 'package:focus_player/componets/playlistcard.dart';
import 'package:focus_player/constants/constants.dart';

class PlayList extends StatefulWidget {
  static String id = 'Playlist';

  @override
  _PlayListState createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text('Python Fundamentals'),
        actions: [
          IconButton(
              icon: Icon(Icons.delete, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text('Delete play list'),
          icon: Icon(Icons.delete),
          backgroundColor: kGrey),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var i = 0; i < 5; i++)
              PlayListCard(
                mainHeading: ' Introduction to Programming and Problem solving',
                subHeading: 'Rice university',
              ),
          ],
        ),
      ),
    );
  }
}

